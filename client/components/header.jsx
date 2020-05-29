import React from 'react';

function Header(props) {
  const cartItemCount = props.cartItemCount;
  return (
    <div className="header-container d-flex justify-content-between">
      <div>
        <i className="fas fa-dollar-sign header-icon ml-4"></i>
      Wicked Sales
      </div>
      <div className="mr-5" onClick={() => props.setView('cart', {})}>
        {`${cartItemCount} Items`}
        <i className="fas fa-shopping-cart"></i>
      </div>
    </div>
  );

}

export default Header;
