import React, { useState } from "react";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";
import { Navigation, Pagination, Autoplay } from "swiper/modules";
import "./SliderImgComponent.css";
import image1 from "../../../assets/images/bg-image/SliderImg1.jpg";
import image2 from "../../../assets/images/bg-image/Sliderimg2.jpg";
import image3 from "../../../assets/images/bg-image/SliderImg3.jpg";
import image4 from "../../../assets/images/bg-image/SligerImg.jpg";
function SliderImgComponent({ sliderId, title, gallery, description }) {
  const images = [gallery, { image: image4 }];
  const [overlayVisible, setOverlayVisible] = useState(false);

  const toggleOverlay = () => {
    setOverlayVisible((prev) => !prev);
  };
console.log('gallery ',gallery);
  return (
    <div
      className={`genn-SlidImg-box  ${
        overlayVisible ? "roundNone" : "roundTrue"
      } `}
    >
      <Swiper
        loop={true}
        autoplay={{
          delay: 5000, // Set the autoplay delay (in milliseconds)
        }}
        breakpoints={{
          768: { slidesPerView: 1 , centeredSlides: true,
          
          },
          360: { slidesPerView: 1.1, spaceBetween: 10, loop: true , centeredSlides: true,},
          375: { slidesPerView: 1.1, spaceBetween: 10, loop: true , centeredSlides: true,},
          414: { slidesPerView: 1.1, spaceBetween: 10, loop: true , centeredSlides: true,},
        }}
        pagination={{
          clickable: true,
        }}
        navigation={
          overlayVisible
            ? false
            : {
                prevEl: ".prev", // Custom previous button
                nextEl: `.next-${sliderId}`, // Custom next button
              }
        }
        modules={[Navigation, Pagination, Autoplay]} // Include Autoplay module
        noSwiping={true}
      >
        {(Array.isArray(gallery) ? gallery : Object.values(gallery)).map((img, index) => (
        <SwiperSlide key={index}>
          <div className="genn-SliderImg-container">
            <div className="shkafoverLay">
              <div className={`genn-SliderImgComponent-title `}>{index === 0 ? title : ''}</div>
            </div>
            <img src={img.image} alt={`Slide ${index + 1}`} />
          </div>
        </SwiperSlide>
      ))}

      </Swiper>
      <div dangerouslySetInnerHTML={{ __html: '<div class="genn-adm-text-container">' + description + '</div>'}}
        className={`custom-overlay genn-dn-mob ${
          overlayVisible ? "show" : "hide"
        }`}
      >
        
      </div>
      <div
        className={`custom-overlay-mob genn-dn-pc ${
          overlayVisible ? "show" : "hide"
        }`}
      >
        <div className="genn-SliderImg-text"  dangerouslySetInnerHTML={{ __html: description }}>
        
        </div>
      </div>
      {/* Navigation buttons */}
      <div className={`next next-${sliderId} `}>
        <i className="fa-solid fa-chevron-right"></i>
      </div>

      <div
        className={`genn-SliderImg-plus !z-[100] ${
          overlayVisible ? "anima" : ""
        }`}
        onClick={toggleOverlay}
      >
        <i className="fa-solid fa-plus"></i>
      </div>
    </div>
  );
}

export default SliderImgComponent;
