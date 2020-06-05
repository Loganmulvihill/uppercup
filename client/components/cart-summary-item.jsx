import React from 'react';

function CartSummaryItem(props) {
  const cartItem = props.cartItem;

  return (
    <div className="card mb-5" >
      <div key={cartItem.cartItemId} className="row no-gutters p-2 pt-3 d-flex justify-content-around shadow-sm align-items-center">
        <img className="col-sm-5 mr-2" src={cartItem.image} alt={cartItem.name} />
        <div className="col-sm-6">
          <h1>{cartItem.name}</h1>
          <h2 className="text-primary">{`$ ${(cartItem.price.toFixed(2)) / (100)}`}</h2>
          <p>{cartItem.shortDescription}</p>
        </div>
      </div>
    </div>
  );
}

export default CartSummaryItem;
