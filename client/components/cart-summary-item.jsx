import React from 'react';

function CartSummaryItem(props) {
  const cartItem = props.cartItem;

  return (

  // <div className="card mb-3">
  //   <div key={cartItem.cartItemId} className="row no-gutters">
  //     <div className="col-md-4">
  //       <img src={cartItem.image} alt={cartItem.name} className="cart-item-img"/>
  //     </div>
  //     <div className="col-md-8 px-3">
  //       <div className="card-block px-3">
  //         <h4 className="card-title">{cartItem.name}</h4>
  //         <p className="card-text">{`$ ${(cartItem.price.toFixed(2)) / (100)}`}</p>
  //         <p className="card-text">{cartItem.shortDescription}</p>
  //       </div>
  //     </div>

  //   </div>
  // </div>

    <div className="card mb-3 col-12" >
      <div key={cartItem.cartItemId} className="row no-gutters d-flex">
        <div className="col-sm-5 d-flex justify-content-center">
          <img className="cart-item-img" src={cartItem.image} alt={cartItem.name}/>
        </div>
        <div className="col-sm-7 d-flex justify-content-center align-items-center">
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

// {/* <div class="container py-3"> */}
//   <div className="card">
//     <div key={cartItem.cartItemId} className="row ">
//       <div className="col-md-4">
//         <img src={cartItem.image} alt={cartItem.name} className="w-100">
//           </div>
//         <div className="col-md-8 px-3">
//           <div className="card-block px-3">
//             <h4 className="card-title">{cartItem.name}</h4>
//             <p className="card-text">{`$ ${(cartItem.price.toFixed(2)) / (100)}`}</p>
//             <p className="card-text">{cartItem.shortDescription}</p>
//           </div>
//         </div>

//       </div>
//     </div>
//   </div>
// {/* </div> */}

// col - xs - 12 col - sm - 5 col - xl - 3 m - 2
