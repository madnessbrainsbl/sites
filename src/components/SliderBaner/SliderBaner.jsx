import React, { useState, useEffect } from "react";
import axios from "axios";
import { Swiper, SwiperSlide } from "swiper/react";
import { Navigation, Autoplay } from "swiper/modules";
import { LocalText } from "../LocalText/LocalText";
import image1 from "../../assets/images/bg-image/SliderBaner1.png";
import image2 from "../../assets/images/bg-image/SliderBaner2.png";
import image3 from "../../assets/images/bg-image/SliderBaner3.png";
import image4 from "../../assets/images/bg-image/SliderBaner4.png";
import image5 from "../../assets/images/bg-image/SliderBaner5.png";
import "swiper/css";
import "swiper/css/pagination";
import "swiper/css/navigation";
import "swiper/swiper-bundle.css";
import "./SliderBaner.css";
import { apiUrl } from "../../config";

function SliderBaner({ openModal, openVideoModal }) {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);

  const defaultImages = [
    { src: image1, alt: LocalText.SliderBaner.altImage1 },
    { src: image2, alt: LocalText.SliderBaner.altImage2 },
    { src: image3, alt: LocalText.SliderBaner.altImage3 },
    { src: image4, alt: LocalText.SliderBaner.altImage4 },
    { src: image5, alt: LocalText.SliderBaner.altImage5 },
  ];

  useEffect(() => {
    axios
      .get(`${apiUrl}/api/main-page`)
      .then((response) => {
        if (response.data.success) {
          setData(response.data.data[0]);
        }
        setLoading(false);
      })
      .catch((error) => {
        console.error("Error fetching data:", error);
        setLoading(false);
      });
  }, [apiUrl]);

  const sliderImages = data?.image_slider?.length > 0
    ? data.image_slider.map((img) => ({
        src: img.image,
        alt: img.title || LocalText.SliderBaner.defaultAlt,
        url: img.url,
      }))
    : defaultImages;

  if (loading) {
    return <div>Loading...</div>; // Можно добавить более красивый лоадер
  }

  return (
    <div className="genn-SliderBaner-image-container">
      <Swiper
        spaceBetween={20}
        slidesPerView={5}
        navigation={{
          prevEl: ".custom-prev",
          nextEl: ".custom-next",
        }}
        loop={sliderImages.length > 3}
        autoplay={{ delay: 3000, disableOnInteraction: false }}
        modules={[Navigation, Autoplay]}
        breakpoints={{
          1920: { slidesPerView: 5 },
          1440: { slidesPerView: 4 },
          1200: { slidesPerView: 3.2 },
          768: { slidesPerView: 2.1 },
          414: {
            slidesPerView: 1.2,
            centeredSlides: true,
            spaceBetween: 10,
          },
          375: { slidesPerView: 1.1, centeredSlides: true, spaceBetween: 5 },
          360: { slidesPerView: 1.05, centeredSlides: true, spaceBetween: 5 },
          260: { slidesPerView: 1.05, centeredSlides: true, spaceBetween: 5 },
        }}
        className="genn-SliderBaner-swiper"
      >
        {sliderImages.map((image, index) => (
          <SwiperSlide key={index}>
            <div className="genn-SliderBaner-image-wrapper">
              {image.url === "modalCall" ? (
                <a
                  href="#"
                  onClick={(e) => {
                    e.preventDefault(); 
                    openModal();
                  }}
                  style={{ cursor: "pointer" }}
                >
                  <img
                    src={image.src}
                    alt={image.alt}
                    className="genn-SliderBaner-image"
                  />
                </a>
              ) : (
                <a href="#"
                 onClick={(e) => {
                    e.preventDefault(); 
                    openVideoModal(image.url);
                  }}
                >
                  <img
                    src={image.src}
                    alt={image.alt}
                    className="genn-SliderBaner-image"
                  />
                </a>
              )}
            </div>
          </SwiperSlide>
        ))}
      </Swiper>
      <div className="custom-next">
        <i className="fa-solid fa-chevron-right"></i>
      </div>
      <div className="custom-prev">
        <i className="fa-solid fa-chevron-left"></i>
      </div>
    </div>
  );
}

export default SliderBaner;