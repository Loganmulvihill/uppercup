import React from 'react';

export default class Productdetails extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      product: null
    };
  }

  componentDidMount() {
    fetch(`/api/products/${this.props.params.productId}`)
      .then(res => res.json())
      .then(product => this.setState({ product }))
      .catch(err => console.error(err));
  }

  render() {
    if (this.state.product !== null) {
      return (
        <div className="container mt-5 mb-5 border rounded white-background shadow-sm">
          <button onClick={() => this.props.setView('catalog', {})} className=" text-primary btn bg-transparent pl-2 pr-2 pt-2">
            {'<'} Back to Catalog button
          </button>
          <div className="row p-2 no-gutters">
            <img src={this.state.product.image} className="card-img-top product-details-img col-sm-5" alt={this.state.product.name} />
            <div className="col-sm-6 d-flex justify-content-center flex-column align-items-center pl-1">
              <h2 className="card-title">{this.state.product.name}</h2>
              <h3 className="card-text text-primary">{`$ ${(this.state.product.price.toFixed(2)) / (100)}`}</h3>
              <p className="card-text text-center">{this.state.product.shortDescription}</p>
              <button type="button" onClick={() => this.props.addToCart(this.state.product)} className="btn btn-primary">Add to Cart</button>
            </div>
          </div>
          <div className="col pl-2 pr-2 pb-4 pt-2">
            <p className="card-text text-cetner">{this.state.product.longDescription}</p>
          </div>
        </div>
      );
    } else {
      return null;
    }
  }
}
