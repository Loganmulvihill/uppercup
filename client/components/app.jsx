import React from 'react';
import Header from './header';
// import ProductList from './productlist';
import Productdetails from './product-details';

export default class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      message: null,
      isLoading: true,
      view: { name: 'catalog', params: {} }
    };
  }

  setView(name, params) {

    // this.setState({ view.name, name: name });
    this.setState({ view: { name: name, params: params } });
    // this.setState({
    //   view: {
    //     this.state.view,
    //     name,
    //     params
    //   }
    // })

  }

  componentDidMount() {
    fetch('/api/health-check')
      .then(res => res.json())
      .then(data => this.setState({ message: data.message || data.error }))
      .catch(err => this.setState({ message: err.message }))
      .finally(() => this.setState({ isLoading: false }));
  }

  render() {

    return (
      <div>
        <Header />
        <Productdetails />
        {/* // <ProductList /> */}
      </div>
    );
  }

}
