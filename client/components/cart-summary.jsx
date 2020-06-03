import React from 'react';
import CartSummaryItem from './cart-summary-item';

function CartSummary(props) {
  const cart = props.cart;
  let total = 0;
  for (let i = 0; i < cart.length; i++) {
    total += cart[i].price.toFixed(2) / (100);
  }

  let noItemsClass = null;
  if (cart.length <= 0) {
    noItemsClass = 'display-message';
  } else {
    noItemsClass = 'display-none';
  }

  let checkoutItemsClass = null;
  if (cart.length <= 0) {
    checkoutItemsClass = 'display-none';
  } else {
    checkoutItemsClass = 'display-message';
  }

  return (
    <div className="container cards-container">
      <button onClick={() => props.setView('catalog', {})} className="row mb-2 text-muted btn bg-transparent">
        {'<'} Back to Catalog button
      </button>
      <h1>My Cart</h1>
      <h2 className={`${noItemsClass}`}>No Items in your cart.</h2>
      <div className="row mb-2">
        {
          cart.map(cartData => {
            return <CartSummaryItem key={cartData.cartItemId} cartItem={cartData} />;
          })
        }
      </div>
      <div className="d-flex justify-content-between align-items-center">
        <h1 className="pb-4">{`Item Total $${total}`}</h1>
        <button type="button" onClick={() => props.setView('checkout', {})} className={`btn btn-primary ${checkoutItemsClass}`}>Checkout</button>
      </div>
    </div>

  );

}

export default CartSummary;
