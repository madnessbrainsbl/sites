import { LocalText } from "../../LocalText/LocalText";
import "./TopLevel.css";
import image from "../../../assets/images/bg-image/shkafTopLevel.jpg";
import { useState } from "react";
import ModelCall from "../../Module/ModelCall/ModelCall";
import { wUrl } from "../../../config";
function TopLevel({ imageBg, title, title2, description }) {
  const [isModelOpen, setIsModelOpen] = useState(false); // State to manage model visibility

  const openModelHandler = () => {
    setIsModelOpen(true); // Open the model
  };

  const closeModelHandler = () => {
    setIsModelOpen(false); // Close the model
  };
  return (
    <>
      <div className="genn-TopLevel-title-sm anigenn">
        <div>{LocalText.shkaf.TopLevel.title}</div>
      </div>
      <div className="genn-TopLevel-imag-container anigenn">
        <img
          className="genn-TopLevel-imag"
          src={image}
          alt={LocalText.shkaf.TopLevel.title}
        />
      </div>
      <div className="genn-TopLevel-Text">
        <div className="genn-TopLevel-Text-title anigenn">{title}</div>
        <div className="genn-TopLevel-Text-desContainer">
          <div className="genn-TopLevel-Text-des1 anigenn">{title2}</div>
          <div
            className="genn-TopLevel-Text-des2 anigenn"
            dangerouslySetInnerHTML={{ __html: description }}
          ></div>
        </div>
        <div className="genn-TopLevel-Text-buttonContainer">
          <button
            className="genn-TopLevel-Text-button1 anigenn"
            onClick={() => {
              window.open(
                wUrl,
                "_blank"
              );
            }}
          >
            {LocalText.shkaf.TopLevel.buttonTiTle1}
          </button>
          <button
            className="genn-TopLevel-Text-button2 anigenn"
            onClick={openModelHandler}
          >
            {LocalText.shkaf.TopLevel.buttonTiTle2}
          </button>
          <button
            className="genn-TopLevel-Text-button3"
            onClick={openModelHandler}
          >
            {LocalText.shkaf.TopLevel.buttonTiTle3}
          </button>
        </div>
      </div>
      {isModelOpen && <ModelCall setCloseModelHandler={closeModelHandler} />}
    </>
  );
}
export default TopLevel;
