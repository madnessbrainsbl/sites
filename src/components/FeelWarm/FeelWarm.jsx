import React from "react";
import AdvantageskitchenBox from "../Module/advantageskitchenBox/AdvantageskitchenBox";
//import "./FeelWarm.css"; // Раскомментируйте, если стили есть

function FeelWarm({ imageGallery = [], openModal }) {
  console.log("imageGallery:", imageGallery);

  if (!imageGallery || imageGallery.length === 0) {
    return <div className="genn-Feelwarm">Нет изображений для отображения</div>;
  }

  const classes = ["first", "second", "therd", "four"];

  return (
    <div className="genn-advantageskitchen">
      {/* Первая секция */}
      <div className="genn-advantageskitchen-category">
        {imageGallery.slice(0, 4).map((image, index) => (
          <div
            key={index}
            className={`anigenn genn-advantageskitchen-category-image genn-advantageskitchen-category-image-${classes[index]}`}
            style={{ backgroundImage: `url(${image.image})` }}
          ></div>
        ))}
      </div>

      {/* Вторая секция */}
      {imageGallery[4] && (
        <AdvantageskitchenBox
          title={imageGallery[4].title}
          ArrayText={imageGallery[4].description}
          classNameComponent={"EmeraldKitchen"}
          bgImage={imageGallery[4].image}
        />
      )}
    </div>
  );
}

export default FeelWarm;