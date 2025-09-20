import { useState, useEffect, useRef } from "react";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";
import "swiper/css/autoplay";
import "./VideoSlider.css";
import plac2 from "../../assets/images/bg-image/plus_svg.svg";
import next from "../../assets/images/ico/Buttons/next-2.svg";
import { LocalText } from "../LocalText/LocalText";
import { useModal } from "../ModalContext";

function VideoSlider() {
  const [currentPlaying, setCurrentPlaying] = useState(null);
  const [progressArray, setProgressArray] = useState([0, 0, 0, 0, 0]);
  const swiperRef = useRef();
  const videoRefs = useRef([]);
  const { videosData, loading, error, openModal } = useModal();
  const ArrayText = [
    LocalText.VideoSlider.title,
    LocalText.VideoSlider.title2,
    LocalText.VideoSlider.title3,
    LocalText.VideoSlider.title4,
    LocalText.VideoSlider.title5,
  ];

  const updateProgress = (index) => {
    const video = videoRefs.current[index];
    if (video) {
      const currentProgress = (video.currentTime / video.duration) * 100;
      setProgressArray((prevProgress) =>
        prevProgress.map((progress, i) =>
          i === index ? currentProgress : progress
        )
      );
    }
  };

  const handleSlideChange = () => {
    const activeIndex = swiperRef.current.swiper.realIndex;

    videoRefs.current.forEach((video, index) => {
      if (index === activeIndex) {
        video.play();
      } else {
        video.pause();
      }
    });

    setCurrentPlaying(activeIndex);
  };

  const togglePlay = (index) => {
    const video = videoRefs.current[index];
    if (video.paused) {
      video.play();
      setCurrentPlaying(index);
    } else {
      video.pause();
      setCurrentPlaying(null);
    }
  };

  // Disable initial autoplay to avoid heavy downloads on first paint
  useEffect(() => {
    // No-op: videos will play on user interaction or slide change
  }, []);

  useEffect(() => {
    if (currentPlaying !== null) {
      const interval = setInterval(() => updateProgress(currentPlaying), 100);
      return () => clearInterval(interval);
    }
  }, [currentPlaying]);

  if (loading) {
    return <div>Loading...</div>;
  }

  if (error || !videosData) {
    return <div>Error loading data</div>;
  }

  return (
    <>
      <Swiper
        ref={swiperRef}
        autoplay={{ delay: 2000, disableOnInteraction: false }}
        pagination={{ clickable: true }}
        slidesPerView={5}
        onSlideChange={handleSlideChange}
        breakpoints={{
          1920: { slidesPerView: 5 },
          1440: { slidesPerView: 4.3, loop: true },
          1200: { slidesPerView: 4.3, spaceBetween: 11, loop: true },
          700: {
            slidesPerView: 3,
            loop: true,
            slidesOffsetAfter: 100,
            slidesOffsetBefore: 100,
            centeredSlides: true,
            spaceBetween: 11,
          },
          500: {
            slidesPerView: 2,
            loop: true,
            slidesOffsetAfter: 100,
            slidesOffsetBefore: 100,
            centeredSlides: true,
            spaceBetween: 11,
          },
          414: {
            slidesPerView: 1.55,
            loop: true,
            centeredSlides: true,
            spaceBetween: 10,
          },
          375: {
            centeredSlides: true,
            slidesPerView: 1.4,
            loop: true,
            slidesOffsetBefore: 8,
            spaceBetween: 10,
          },
          360: {
            centeredSlides: true,
            slidesPerView: 1.4,
            loop: true,
            slidesOffsetBefore: 8,
            spaceBetween: 10,
          },
          260: {
            centeredSlides: true,
            slidesPerView: 1.2,
            loop: true,
            spaceBetween: 10,
          },
        }}
      >
        {videosData.map((video, index) => {
          const radius = 20;
          const circumference = 2 * Math.PI * radius;
          const strokeDashoffset =
            circumference - (progressArray[index] / 100) * circumference;

          return (
            <SwiperSlide key={index} className="video-slider-slide">
              <div
                className="genn-VideoSlider-card"
                onMouseEnter={() => {
                  if (currentPlaying !== index) {
                    videoRefs.current.forEach((video, i) => {
                      if (i !== index) video.pause();
                    });
                    videoRefs.current[index].play();
                    setCurrentPlaying(index);
                  }
                }}
                onMouseLeave={() => {
                  videoRefs.current[index].pause();
                  setCurrentPlaying(null);
                  setProgressArray((prev) =>
                    prev.map((progress, i) => (i === index ? 0 : progress))
                  );
                }}
              >
                <video
                  ref={(el) => (videoRefs.current[index] = el)}
                  muted
                  loop
                  autoPlay={false}
                  playsInline
                  preload="none"
                  src={video.video}
                  onTimeUpdate={() => updateProgress(index)}
                />
                <div className="videoSlider-banner">
                  <div
                    className="videoSlider-circular-progress"
                    style={{ width: "50px", height: "50px" }}
                  >
                    <svg
                      className="videoSlider-progress-ring"
                      width="50"
                      height="50"
                    >
                      <circle
                        className="videoSlider-progress-ring__background"
                        cx="25"
                        cy="25"
                        r="20"
                        strokeWidth="5"
                      />
                      <circle
                        className="videoSlider-progress-ring__progress"
                        cx="25"
                        cy="25"
                        r="20"
                        strokeWidth="5"
                        style={{
                          strokeDasharray: `${circumference}`,
                          strokeDashoffset: `${strokeDashoffset}`,
                          transition: "stroke-dashoffset 0.1s linear",
                        }}
                      />
                    </svg>
                    <button
                      onClick={() => togglePlay(index)}
                      className="videoSlider-circular-button"
                    >
                      {currentPlaying === index ? (
                        <>
                          <div className="genn-pause"></div>
                        </>
                      ) : (
                        <i className="fa-solid fa-play"></i>
                      )}
                    </button>
                  </div>
                </div>
                <div
                  className={
                    index === currentPlaying
                      ? "genn-videoSlider-text1"
                      : "genn-videoSlider-text"
                  }
                >
                  <div className="genn-videoSlider-text2">
                    <div
                      className={
                        index !== currentPlaying
                          ? "genn-videoSlider-text-contain"
                          : "genn-videoSlider-text-contain"
                      }
                    >
                      {ArrayText[index]}
                    </div>
                    <div
                      className="genn-videoSlider-text-img"
                      onClick={() => openModal(index)}
                    ></div>
                  </div>
                </div>
              </div>
            </SwiperSlide>
          );
        })}
        <div className="swiper-button">
          <div
            className="swiper-button-prev"
            onClick={() => swiperRef.current.swiper.slidePrev()}
          ></div>
          <div
            className="swiper-button-next"
            onClick={() => swiperRef.current.swiper.slideNext()}
          ></div>
        </div>
      </Swiper>
      <div className="swiper-button2">
        <div
          className="swiper-button-prev2"
          onClick={() => swiperRef.current.swiper.slidePrev()}
        >
          <img src={next}></img>
        </div>
        <div
          className="swiper-button-next2"
          onClick={() => swiperRef.current.swiper.slideNext()}
        >
          <img src={next}></img>
        </div>
      </div>
    </>
  );
}

export default VideoSlider;