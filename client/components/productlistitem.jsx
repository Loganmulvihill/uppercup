import React from 'react';

function Product(props) {
  const product = props.product;

  return (
    <div onClick={() => props.setView('details', { productId: product.productId })} className="col-sm-4 col-margin">
      <div key={product.productId} className="card m-2 card-height">
        <img src={product.image} className="card-img-top img-height" alt={product.name}/>
        <div className="card-body">
          <h5 className="card-title">{product.name}</h5>
          <p className="card-text">{`$ ${(product.price / 100).toFixed(2)}`}</p>
          <p className="card-text">{product.shortDescription}</p>
        </div>
      </div>
    </div>
  );
}
export default Product;
