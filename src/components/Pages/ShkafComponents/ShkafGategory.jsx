import React, { useState, useEffect } from "react";
import { LocalText } from "../../LocalText/LocalText";
import SliderImgComponent from "../../Module/SliderImg/SliderImgComponent";
import "./ShkafGategory.css";

function ShkafGategory({ categorySlide }) {
  const [showAll, setShowAll] = useState(false);
  const [isSmallScreen, setIsSmallScreen] = useState(false);

  useEffect(() => {
    const handleResize = () => {
      setIsSmallScreen(window.innerWidth < 768); // Исправлено условие
    };

    handleResize();
    window.addEventListener("resize", handleResize);
    return () => window.removeEventListener("resize", handleResize);
  }, []);

  if (!categorySlide || typeof categorySlide !== "object") {
    console.log("categorySlide is not an object:", categorySlide);
    return <div>{LocalText.Kitchen.Category.noData || "Нет данных для отображения"}</div>;
  }

  // Преобразуем объект в массив
  const categoryArray = Object.values(categorySlide);
  // Ограничиваем количество элементов, если showAll === false
  const displayedItems = showAll || !isSmallScreen ? categoryArray : categoryArray.slice(0, 3);

  return (
    <>
      <div className="genn-title-shkafgategory">Идеи для вашего шкафа на заказ</div>

      <div className="genn-Categoryes-image-container">
        {displayedItems.map((item, index) => (
          <SliderImgComponent
            key={index} 
            sliderId={`slider-${index}`}
            title={item.title}
            gallery={item.gallery}
            description={item.description}
          />
        ))}
      </div>

      {isSmallScreen && categoryArray.length > 3 && (
        <div className="show-more-container">
          <button
            className="genn-show-more-button"
            onClick={() => setShowAll((prev) => !prev)}
          >
            {showAll ? "Скрыть" : "Показать больше"}
          </button>
        </div>
      )}
    </>
  );
}

export default ShkafGategory;