import React from 'react';

export default class CheckoutForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: '',
      creditCard: '',
      shippingAddress: ''
    };
    this.getTotal = this.getTotal.bind(this);
    this.changeNameHandler = this.changeNameHandler.bind(this);
    this.changeCreditCard = this.changeCreditCard.bind(this);
    this.changeShippingAddress = this.changeShippingAddress.bind(this);
  }

  changeNameHandler(event) {
    this.setState({ name: event.target.value });
  }

  changeCreditCard(event) {
    this.setState({ creditCard: event.target.value });
  }

  changeShippingAddress(event) {
    this.setState({ shippingAddress: event.target.value });
  }

  getTotal() {
    const cart = this.props.cart;
    let total = 0;
    for (let i = 0; i < cart.length; i++) {
      total += cart[i].price;
    }
    return total;
  }

  render() {
    return (
      <div className="container">
        <div className="col white-background pt-3 pb-3 mt-5 mb-5 shadow-sm border">
          <h1>Checkout</h1>
          <h2 className="pb-4">{`Item Total $${((this.getTotal()) / 100).toFixed(2)}`}</h2>
          <form>
            <div className="form-group">
              <label htmlFor="exampleFormControlInput1">Name</label>
              <input type="text" value={this.state.name} onChange={this.changeNameHandler} className="form-control" id="exampleFormControlInput1" placeholder=""/>
            </div>
            <div className="form-group">
              <label htmlFor="exampleFormControlInput1">Credit Card</label>
              <input type="text" value={this.state.creditCard} onChange={this.changeCreditCard} className="form-control" id="exampleFormControlInput1" placeholder="" />
            </div>
            <div className="form-group">
              <label htmlFor="exampleFormControlTextarea1">Shipping Address</label>
              <textarea value={this.shippingAddress} onChange={this.changeShippingAddress} className="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            <div className="mt-3 d-flex">
              <input className="mr-2 mt-1" type="checkbox" name="iAgree"/>
              <label htmlFor="iAgree">I accept that this website is for demonstration purposes only, that no payment processing will happen, and that personal information such as names, addresses or real credit card numbers should not be used on submission of this form.</label>
            </div>
          </form>
          <div className="d-flex justify-content-between align-items-center">
            <button onClick={() => this.props.setView('catalog', {})} className="row mb-2 text-muted btn bg-transparent">
              {'<'} Continue Shopping
            </button>
            <button type="button" onClick={() => this.props.placeOrder({ name: this.state.name, creditCard: this.state.creditCard, shippingAddress: this.state.shippingAddress })} className={'btn btn-primary'}>Place Order</button>
          </div>
        </div>
      </div>
    );
  }
}
