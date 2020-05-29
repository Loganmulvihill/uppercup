import React from 'react';
import Header from './header';
import ProductList from './productlist';
import Productdetails from './product-details';
import CartSummary from './cart-summary';

export default class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      message: null,
      isLoading: true,
      cart: [],
      view: { name: 'catalog', params: {} }
    };
    this.setView = this.setView.bind(this);
    this.getCartItems = this.getCartItems.bind(this);
    this.addToCart = this.addToCart.bind(this);
  }

  getCartItems() {
    fetch('/api/cart')
      .then(res => res.json())
      .then(data => this.setState({ cart: data }))
      .catch(err => console.error(err));
  }

  addToCart(product) {
    const options = {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(product)
    };

    fetch('/api/cart', options)
      .then(res => res.json())
      .then(data => this.setState(({ cart: this.state.cart.concat(data) })))
      .catch(err => console.error(err));
  }

  setView(name, params) {
    this.setState({
      view: {
        name,
        params
      }
    });
  }

  componentDidMount() {
    this.getCartItems();

    fetch('/api/health-check')
      .then(res => res.json())
      .then(data => this.setState({ message: data.message || data.error }))
      .catch(err => this.setState({ message: err.message }))
      .finally(() => this.setState({ isLoading: false }));
  }

  render() {
    if (this.state.view.name === 'details') {
      return (
        <div>
          <Header setView={this.setView} cartItemCount={this.state.cart.length} />
          <Productdetails addToCart={this.addToCart} setView={this.setView} params={this.state.view.params} />
        </div>
      );
    } else if (this.state.view.name === 'catalog') {
      return (
        <div>
          <Header setView={this.setView} cartItemCount={this.state.cart.length} />
          <ProductList setView={this.setView} />
        </div>
      );
    } else if (this.state.view.name === 'cart') {
      return (
        <div>
          <Header setView={this.setView} cartItemCount={this.state.cart.length} />
          <CartSummary cart={this.state.cart} setView={this.setView} />
        </div>
      );
    }
  }

}
