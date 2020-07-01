import React from 'react';

function Product(props) {
  const product = props.product;

  return (
    <div key={product.productId} className="card shadow-sm card-width mb-3 hvr-grow cursor-pointer" onClick={() => props.setView('details', { productId: product.productId })}>
      <img src={product.image} className="card-img-top img-height" alt={product.name}/>
      <div className="card-body d-flex justify-content-center flex-column align-items-center">
        <h4 className="card-title">{product.name}</h4>
        <p className="card-text">{product.shortDescription}</p>
        <h5 className="card-text">{`$ ${(product.price / 100).toFixed(2)}`}</h5>
      </div>
    </div>
  );
}
export default Product;
