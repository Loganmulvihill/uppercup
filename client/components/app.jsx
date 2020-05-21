import React from 'react';
import Header from './header';
import ProductList from './productlist';
import Productdetails from './product-details';

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
  }

  getCartItems() {
    // console.log('cheese');
    // const options = {
    //   method: 'GET',
    //   headers: { 'Content-Type': 'application/json' }
    // };

    fetch('/api/cart')
      .then(res => res.json())
      .then(data => console.log(data))
      // .then(data => this.setState({ cart: data }))
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

    // fetch('/api/health-check')
    //   .then(res => res.json())
    //   .then(data => this.setState({ message: data.message || data.error }))
    //   .catch(err => this.setState({ message: err.message }))
    //   .finally(() => this.setState({ isLoading: false }));
  }

  render() {
    if (this.state.view.name === 'details') {
      return (
        <div>
          <Header />
          <Productdetails setView={this.setView} params={this.state.view.params} />
        </div>
      );
    } else if (this.state.view.name === 'catalog') {
      return (
        <div>
          <Header />
          <ProductList setView={this.setView} />
        </div>
      );
    }
  }

}
