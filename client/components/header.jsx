import React from 'react';

function Header(props) {
  const cartItemCount = props.cartItemCount;
  return (
    <div className="header-container d-flex justify-content-between">
      <div className="container d-flex justify-content-between">
        <div>
          <i className="fas fa-coffee header-icon mr-1"></i>
      UpperCup
        </div>
        <div className="cursor-pointer" onClick={() => props.setView('cart', {})}>
          {`${cartItemCount} Items`}
          <i className="fas fa-shopping-cart ml-1"></i>
        </div>
      </div>
    </div>
  );

}

export default Header;
