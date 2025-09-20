import React from "react";
import { LocalText } from "../LocalText/LocalText";
import image1 from "../../assets/images/bg-image/Categoryes1.png";
import image2 from "../../assets/images/bg-image/Categoryes2.png";
import image3 from "../../assets/images/bg-image/Categoryes3.png";
import image4 from "../../assets/images/bg-image/Categoryes4.png";
import "./Categoryes.css";
import { useState } from "react";
import ModelWindow from "../Module/ModelWindow/ModelWindow";

function Categoryes({ categories = [], title = LocalText.Categoryes.title }) {
  // Локальные данные для fallback
  const defaultCategories = [
    { image: image1, title: LocalText.Categoryes.CategoryesLinks.l1 },
    { image: image2, title: LocalText.Categoryes.CategoryesLinks.l2 },
    { image: image3, title: LocalText.Categoryes.CategoryesLinks.l3 },
    { image: image4, title: LocalText.Categoryes.CategoryesLinks.l4 },
  ];

  // Используем данные из API или fallback
  const categoryData = categories.length > 0 ? categories : defaultCategories;

 const [openModel, setOpenModel] = useState(false);
 const setOpenModelHandler = () => {
  setOpenModel(true);
  document.body.style.overflow = "hidden";
};

const setCloseModelHandler = () => {
  setOpenModel(false);
  document.body.style.overflow = "";
};

  return (
    <>
      <div className="genn-Categoryes-title anigenn">{title}</div>
      <ul className="genn-Categoryes-menu font-face-gm">
        {categoryData.map((category, index) => (
          <li key={index} className="genn-Categoryes-link anigenn">
            <a href={category.url} data-discover="true">{category.title}</a>
          </li>
        ))}
         <li  className="genn-Categoryes-link anigenn" onClick={setOpenModelHandler}>
            <a href={"#"} data-discover="true">Рабочие зоны</a>
          </li>
      </ul>
      <div className="genn-Categoryes-image-container">
        {categoryData.map((category, index) => (
          <div key={index} className="genn-Categoryes-image anigenn">
            <div className="overLay"></div>
            <img src={category.image} alt={category.title} />
            
            <a className="genn-Baner-button-v4" href={category.url} data-discover="true">{category.title}</a>
             
          </div>
        ))} 
      </div>
      {/* Model Window */}
      {openModel && (
        <ModelWindow
          setCloseModelHandler={setCloseModelHandler}
        />
      )}
    </>
  );
}

export default Categoryes;
