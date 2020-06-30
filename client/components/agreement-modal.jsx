import React from 'react';

export default class AgreementModal extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      formcheck: false
    };
    this.formAgreement = this.formAgreement.bind(this);
  }

  formAgreement() {
    this.setState({ formCheck: true });
  }

  render() {
    let className = null;
    if (this.props.agreed === false) {
      className = 'display-modal';
    } else if (this.props.agreed === true) {
      className = 'display-none';
    }
    return (
      <div className={`agreement-modal ${className}`}>
        <div className="d-flex justify-content-center flex-column align-content-around agreement-modal-interior-container shadow p-2">
          <h5 className="text-center brand-blue white-text rounded p-3">Welcome to UpperCup!</h5>
          <p className="text-center">I accept that this website is for demonstration purposes only, that no payment processing will happen, and that personal information such as names, addresses or real credit card numbers should not be used on submission of the forms within this website.</p>
          <div className="mt-3 d-flex justify-content-center">
            <form action="" className="d-flex justify-content-center flex-column align-items-center">
              <div className="form-group">
                <button type="button" onClick={this.props.hideAgreementModal} className="btn shadow-sm align-self-center btn-primary mt-2">
                Submit
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    );
  }
}
