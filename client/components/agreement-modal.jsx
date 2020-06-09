import React from 'react';

function AgreementModal(props) {
  let className = null;
  if (props.isRoomClosed === false) {
    className = 'display-modal';
  } else {
    className = 'display-none';
  }

  return (

    <div className={`agreement-modal container ${className}`}>
      <div className=" pb-4 d-flex justify-content-center flex-column align-content-around agreement-modal-interior-container shadow">
        <div className="w-100 match-icon">
        </div>
        <p className="text-center montserrat-500 lead brand-blue-text">Sorry this room <br /> has been closed</p>
        <div className="mt-3 d-flex">
          <input className="mr-2 mt-1" type="checkbox" name="iAgree" />
          <label htmlFor="iAgree">I accept that this website is for demonstration purposes only, that no payment processing will happen, and that personal information such as names, addresses or real credit card numbers should not be used on submission of this form.</label>
        </div>
        <button
          type="button"
          onClick={props.hideRoomClosedModal}
          className="btn orange-rounded-button shadow-sm align-self-center">
          Ok
        </button>
      </div>
    </div>
  );

}
export default AgreementModal;
