import { useState } from "react";
import "./TwoButtonV1.css"
import MultiStepForm from "../Pages/MultiStepForm/MultiStepForm";
import ModelCall from "../Module/ModelCall/ModelCall";

function TwoButtonV1() {
  const [isModalOpen, setIsModalOpen] = useState(false);

  const openModal = () => {
    setIsModalOpen(true); // Open modal when button is clicked
  };

  const closeModal = () => {
    setIsModalOpen(false); // Close modal
  };
  const [isModalOpen2, setIsModalOpen2] = useState(false);

  const openModal2 = () => {
    setIsModalOpen2(true); // Open modal when button is clicked
  };

  const closeModal2 = () => {
    setIsModalOpen2(false); // Close modal
  };
    return ( 
      <>        
        <div className="genn-TwoButtonV1-block">
            <button className="genn-Baner-button-v5" onClick={openModal}>Рассчитать стоимость</button>
            <button className="genn-Baner-button-v3-1"  onClick={openModal2}>Звонок</button>
        </div>   
        {isModalOpen && (
        <MultiStepForm isModalOpen={openModal} closeModal={closeModal} />
      )}
      {isModalOpen2 && <ModelCall setCloseModelHandler={closeModal2} />}
      </>
    );
  }
  export default TwoButtonV1;
  