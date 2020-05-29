import React from 'react';

function CartSummaryItem(props) {
  const cartItem = props.cartItem;

  return (

    <div className="card mb-3 col-12">
      <div key={cartItem.cartItemId} className="row no-gutters">
        <div className="col-md-4 ">
          <img className="cart-item-img" src={cartItem.image} alt={cartItem.name}/>
        </div>
        <div className="col-md-8 d-flex justify-content-center align-items-center">
          <div className="card-body">
            <h5 className="card-title">{cartItem.name}</h5>
            <p className="card-text">{`$ ${(cartItem.price.toFixed(2)) / (100)}`}</p>
            <p className="card-text">{cartItem.shortDescription}</p>
          </div>
        </div>
      </div>
    </div>
  );
}

export default CartSummaryItem;
