import { style } from "framer-motion/client";
import React from "react"; 

function FeelWarmLite({ imageGallery, openModal }) {
  // Проверяем, существует ли imageGallery и преобразуем объект в массив, если нужно
  const galleryArray = imageGallery && typeof imageGallery === "object" 
    ? Object.values(imageGallery) 
    : [];

  if (!galleryArray || galleryArray.length === 0) {
    return <div>Изображения недоступны</div>;
  }

  console.log(galleryArray);

  return (
    <div className="genn-Feelwarm">
      {/* Версия для десктопа */}
      <div className="genn-container-forPc bg-[#111]">
        <div className="genn-Feelwarm-forBc genn-container">
          {galleryArray.slice(0, 2).map((image, index) => (
            <div 
              style={{ background: `url(${image.image})` }}
              key={index}
              className={`anigenn genn-feelwarm-image genn-Feelwarm-forBc-image${index + 1} bg-[#fff]`}
            >
            </div>
          ))}
          <div className="genn-Feelwarm-forBc-imagesBox bg-[#fff]">
            {galleryArray.slice(2, 4).map((image, index) => (
              <div
                style={{ background: `url(${image.image})` }}
                key={index}
                className={`anigenn genn-feelwarm-image genn-Feelwarm-forBc-imagesBox-${index === 0 ? 'image' + (index + 1) : 'omage' + (index + 1)} bg-[#fff]`}
              >
              </div>
            ))}
          </div>
          {galleryArray.slice(4, 5).map((image, index) => (
            <div
              style={{ background: `url(${image.image})` }}
              key={index}
              className={`anigenn genn-feelwarm-image genn-Feelwarm-forBc-image${index + 3} bg-[#fff]`}
            >
              <img className="last-img" style={{ opacity: 0 }} src={image.image} alt={`warm${index + 1}`} />
            </div>
          ))}
        </div>
        <div className="genn-feelwarm-text anigenn">
          Почувствуйте тепло общения и вкус каждого мгновения
        </div>
        <div className="genn-feelwarm-buttonContainer">
          <button onClick={openModal} className="genn-Baner-button-v5 genn-feelwarm-textButton anigenn">
            Бесплатный дизайн проект
          </button>
        </div>
      </div>

      {/* Версия для мобильных устройств */}
      <div className="genn-container-mobile bg-[#000]">
        <div className="feelwarm-container-main">
          <div className="feelwarm-container feelwarm-container-1">
            <div className="feelwarm-container-image feelwarm-container-image-1">
              <div className="feelwarm-container-image-1-image-first">
                <div 
                  style={{ background: `url(${galleryArray[0]?.image})` }}
                  className="feelwarm-container-image-m feelwarm-container-image-1-image-first-1 anigenn"
                >
                </div>
                <div
                  style={{ background: `url(${galleryArray[4]?.image})` }}
                  className="feelwarm-container-image-m feelwarm-container-image-1-image-first-2 anigenn"
                >
                </div>
              </div>
              <div 
                style={{ background: `url(${galleryArray[1]?.image})` }}
                className="feelwarm-container-image-m feelwarm-container-image-1-image-second anigenn"
              >
              </div>
            </div>
            <div className="feelwarm-container-image-m genn-text-feelwarm-1 genn-text-feelwarm anigenn">
              Почувствуйте тепло общения и вкус <br /> каждого мгновения
            </div>
          </div>
          <div className="feelwarm-container feelwarm-container-2">
            <div className="feelwarm-container-image feelwarm-container-image-2">
              {galleryArray.slice(2, 6).map((image, index) => (
                <div
                  style={{ background: `url(${image.image})` }}
                  key={index}
                  className="anigenn feelwarm-container-image-m feelwarm-container-image-a feelwarm-container-image-2-first"
                >
                </div>
              ))}
            </div>
            <div className="genn-text-feelwarm genn-text-feelwarm-2 anigenn">
              Каждый элемент радует глаз и <br />
              удобен в использовании
            </div>
          </div>
        </div>
        <div className="feelwarm-button">
          <button className="genn-Baner-button-v1 anigenn">
            Бесплатный дизайн проект
          </button>
        </div>
      </div>
    </div>
  );
}

export default FeelWarmLite;