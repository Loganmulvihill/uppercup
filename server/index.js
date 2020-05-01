require('dotenv/config');
const express = require('express');

const db = require('./database');
const ClientError = require('./client-error');
const staticMiddleware = require('./static-middleware');
const sessionMiddleware = require('./session-middleware');

const app = express();

app.use(staticMiddleware);
app.use(sessionMiddleware);

app.use(express.json());

app.get('/api/health-check', (req, res, next) => {
  db.query('select \'successfully connected\' as "message"')
    .then(result => res.json(result.rows[0]))
    .catch(err => next(err));
});

app.get('/api/products', (req, res, next) => {

  const sql = `
    select "productId",
          "name",
          "price",
          "image",
          "shortDescription"
      from "products"
  `;
  db.query(sql)
    .then(result => {
      const products = result.rows;
      res.json(products);
    })
    .catch(err => next(err));
});

app.get('/api/products/:productId', (req, res, next) => {

  const { productId } = req.params;

  if (parseInt(productId) < 0) {
    return res.status(400).json({
      error: 'gradeId must be a positive integer'
    });
  }

  const sql = `
     select *
      from "products"
    where "productId" = $1
  `;

  const params = [productId];

  db.query(sql, params)
    .then(result => {
      const product = result.rows[0];
      if (!product) {
        res.status(404).json({
          error: `Cannot find product with productId ${productId}`
        });
      } else {
        res.json(product);
      }
    })
    .catch(err => next(err));

});

app.get('/api/cart', (req, res, next) => {
  db.query('select \'successfully connected\' as "message"')
    .then(result => res.json([]))
    .catch(err => next(err));
});

// app.get('/api/cart', (req, res, next) => {

//   const sql = `
//     select *
//       from "carts"
//   `;
//   db.query(sql)
//     .then(result => {
//       res.json(result.rows[0]);
//     })
//     .catch(err => next(err));
// });

app.post('/api/cart', (req, res, next) => {
  const product = req.body;
  const productId = req.body.productId;
  if (!parseInt(product.productId) < 0) {
    return res.status(400).json({
      error: 'product id must be positive'
    });
  }

  const sql = `
  select "price"
     where "productId" = $1
     from "products"
    returning *`;

  const params = [productId];
  db.query(sql, params)
    .then(result => {
      const product = result.rows[0];
      if (!product) {
        throw new ClientError('This does not work', 400);
      }
      const sql = ` insert into "carts"("cartId", "createdAt")
        values(default, default )
        returning "cartId"`;
      console.log(product);
    }).then({

    }).then({

    }).catch(err => {
      console.log('double awesome');
      console.error(err);
    });
  // //       if (!product) {
  // //         throw new ClientError('This does not work', 400);
  //       }
  //       const sql = ` insert into "carts"("cartId", "createdAt")
  //       values(default, default )
  //       returning "cartId"`;

// }
});
// .then(result => {
//   const grade = result.rows[0];
//   res.json(grade);
// })
// if (!newGrade.course) {
//   return res.status(400).json({
//     error: 'a course is required'
//   });
// }
// if (!newGrade.name) {
//   return res.status(400).json({
//     error: 'a name is required'
//   });
// }
// const sql =
//   insert into "grades" ("name", "course", "grade")
//   values ($1, $2, $3)
//     returning *
// `;
// const params = [newGrade.name, newGrade.course, parseInt(newGrade.grade)];
// db.query(sql, params)
//   .then(result => {
//     const grade = result.rows[0];
//     res.json(grade);
//   })
//   .catch(err => {
//     console.error(err);
//     res.status(500).json({
//       error: 'An unexpected error occurred.'
//     });
//   });
// });

app.use('/api', (req, res, next) => {
  next(new ClientError(`cannot ${req.method} ${req.originalUrl}`, 404));
});

app.use((err, req, res, next) => {
  if (err instanceof ClientError) {
    res.status(err.status).json({ error: err.message });
  } else {
    console.error(err);
    res.status(500).json({
      error: 'an unexpected error occurred'
    });
  }
});

app.listen(process.env.PORT, () => {
  // eslint-disable-next-line no-console
  console.log('Listening on port', process.env.PORT);
});
