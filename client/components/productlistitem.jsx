import React from 'react';

function Product(props) {
  const product = props.product;

  return (
    <div key={product.productId} className="card shadow-sm card-width mb-3" onClick={() => props.setView('details', { productId: product.productId })}>
      <img src={product.image} className="card-img-top img-height" alt={product.name}/>
      <div className="card-body">
        <h5 className="card-title">{product.name}</h5>
        <p className="text-primary card-text">{`$ ${(product.price / 100).toFixed(2)}`}</p>
        <p className="card-text">{product.shortDescription}</p>
      </div>
    </div>
  );
}
export default Product;
