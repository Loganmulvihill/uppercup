import React from 'react';

export default class Productdetails extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      product: null
    };
    // this.getProduct = this.getProduct.bind(this);
  }

  getProduct() {
    fetch('/api/products/3')
      .then(res => res.json())
      .then(product => this.setState({ product }))
      .catch(err => console.error(err));
  }

  componentDidMount() {
    this.getProduct();
    // fetch('/api/products/1')
    //   .then(res => res.json())
    //   .then(product => this.setState({ product }))
    //   .catch(err => console.error(err));
  }

  render() {
    if (this.state.product !== null) {
      return (
        <div className="container mt-5 border rounded">
          <div className="row mb-2 text-muted"> {'<'} Back to Catalog button         </div>

          <div className="row mb-2">
            <div className="col-5">
              <img src={this.state.product.image} className="card-img-top product-details-img" alt={this.state.product.name} />
            </div>
            <div className="col-6">
              <div className="card-body">
                <h3 className="card-title">{this.state.product.name}</h3>
                <p className="card-text text-muted">{`$ ${(this.state.product.price.toFixed(2)) / (100)}`}</p>
                <p className="card-text">{this.state.product.shortDescription}</p>
              </div>
            </div>
          </div>

          <div className="row">
            <p className="card-text">{this.state.product.longDescription}</p>
          </div>

        </div>
      );
    } else {
      return null;
    }
  }
}
