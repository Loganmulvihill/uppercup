import React from 'react';

function AgreementModal(props) {
  let className = null;
  if (props.isRoomClosed === false) {
    className = 'display-modal';
  } else {
    className = 'display-none';
  }

  return (

    <div className={`agreement-modal ${className}`}>
      <div className="d-flex justify-content-center flex-column align-content-around agreement-modal-interior-container shadow p-2">
        <h2 className="text-center">Welcome to Wicked Sales</h2>
        <div className="mt-3 d-flex">
          <input className="mr-2 mt-1" type="checkbox" name="iAgree" />
          <label htmlFor="iAgree">I accept that this website is for demonstration purposes only, that no payment processing will happen, and that personal information such as names, addresses or real credit card numbers should not be used on submission of the forms within this website.</label>
        </div>
        <button
          type="button"
          onClick={props.hideRoomClosedModal}
          className="btn shadow-sm align-self-center btn-primary mt-2">
          Submit
        </button>
      </div>
    </div>
  );

}
export default AgreementModal;
