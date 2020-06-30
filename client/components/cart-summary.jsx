import React from 'react';
import CartSummaryItem from './cart-summary-item';

function CartSummary(props) {
  const cart = props.cart;
  let total = 0;
  for (let i = 0; i < cart.length; i++) {
    total += cart[i].price;
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
      <div className="row">
        <button onClick={() => props.setView('catalog', {})} className="row mb-2 text-primary btn bg-transparent">
          {'<'} Back to Catalog
        </button>
      </div>
      <div className="row">
        <h1>My Cart</h1>
        <h2 className={`${noItemsClass}`}>No Items in your cart.</h2>
      </div>
      <div className="d-flex flex-wrap justify-content-between mt-5">
        {
          cart.map(cartData => {
            return <CartSummaryItem key={cartData.cartItemId} cartItem={cartData} />;
          })
        }
      </div>
      <div className="d-flex flex-nowrap justify-content-between">
        <h3 className="mb-4">{`Item Total: $${(total / 100).toFixed(2)}`}</h3>
        <div>
          <button type="button" onClick={() => props.setView('checkout', {})} className={`btn btn-primary cart-summary-button ${checkoutItemsClass}`}>Checkout</button>
        </div>
      </div>
    </div>

  );

}

export default CartSummary;
