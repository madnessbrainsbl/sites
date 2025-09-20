import React, { useState, useEffect, useRef } from "react";
import { LocalText } from "../LocalText/LocalText";
import "./CommentsModal.css";
import image1 from "../../assets/images/bg-image/commentVideo2.png";
import image2 from "../../assets/images/bg-image/commentVideo1.png";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";
import "swiper/css/autoplay";
import icon1 from "../../assets/images/ico/commentModelIcom1.svg";
import icon2 from "../../assets/images/ico/commentModelIcon2.svg";
import icon3 from "../../assets/images/ico/commentModelIcon3.svg";
import icon4 from "../../assets/images/ico/commentModelIcon4.svg";
import icon5 from "../../assets/images/ico/commentModelIcon5.svg";
import { Navigation, Autoplay } from "swiper/modules";
import { Pagination } from "swiper/modules";
import axios from "axios";
import { apiUrl } from "../../config";

function CommentsModal({ reviews, isWhite = true }) {
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [isMobileModalOpen, setIsMobileModalOpen] = useState(false);
  const [currentPlaying, setCurrentPlaying] = useState(null);
  const videoRefs = useRef([]);
  const [swiperInstance, setSwiperInstance] = useState(null);
  const [videos, setData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [selectedCategory, setSelectedCategory] = useState(null);
  const [isMuted, setIsMuted] = useState(true);
  const [fullscreenSlide, setFullscreenSlide] = useState(false);
  const [currentSlideIndex, setCurrentSlideIndex] = useState(0);
  const animationFrameRefs = useRef({});
  const [smoothTimes, setSmoothTimes] = useState({});
  const [durations, setDurations] = useState({});

  const linkCat = ["kitchens", "cabinets", "hallways", "dressing_rooms", "work_areas"];

  useEffect(() => {
    axios
      .get(apiUrl + "/api/reviews")
      .then((response) => {
        if (response.data.success) {
          setData(response.data.data[0]?.reviews || []);
        } else {
          console.error("API did not return success:", response.data);
        }
        setLoading(false);
      })
      .catch((error) => {
        console.error("Error fetching data:", error);
        setLoading(false);
      });
  }, []);

  const handleCategoryClick = (category) => {
    setSelectedCategory(category);
  };

  const filteredVideos = selectedCategory
    ? videos.filter((video) => video.category === selectedCategory)
    : videos;

  const totalSlides = filteredVideos.length;
  const maxPerView = 6; // maximum used in breakpoints
  const canLoop = totalSlides > maxPerView;
  const cap = (n) => (totalSlides > 0 ? Math.min(n, totalSlides) : n);

  const openModal = (image) => {
    if (window.innerWidth < 768) {
      setIsMobileModalOpen(true);
    } else {
      setIsModalOpen(true);
      document.body.style.overflow = "hidden";
    }
  };

  const closeModal = () => {
    setIsModalOpen(false);
    setIsMobileModalOpen(false);
    setCurrentPlaying(null);
    videoRefs.current.forEach((ref) => ref?.pause());
    Object.values(animationFrameRefs.current).forEach((id) => cancelAnimationFrame(id));
    document.body.style.overflow = "";
  };

  useEffect(() => {
    if (isModalOpen && videoRefs.current[0]) {
      videoRefs.current[0].play();
      setCurrentPlaying(0);
    }
  }, [isModalOpen]);

  const handlePlayPause = (index) => {
    const videoEl = videoRefs.current[index];
    if (!videoEl) return;

    if (currentPlaying === index) {
      videoEl.pause();
      cancelAnimationFrame(animationFrameRefs.current[index]);
      setCurrentPlaying(null);
    } else {
      if (currentPlaying !== null) {
        videoRefs.current[currentPlaying]?.pause();
        cancelAnimationFrame(animationFrameRefs.current[currentPlaying]);
      }
      videoEl.play();
      setCurrentPlaying(index);
      animateProgress(index);
    }
  };

  const handlePrevSlide = () => {
    if (swiperInstance) {
      if (currentPlaying !== null) {
        videoRefs.current[currentPlaying]?.pause();
        cancelAnimationFrame(animationFrameRefs.current[currentPlaying]);
      }
      swiperInstance.slidePrev();
      const newIndex = swiperInstance.realIndex;
      setTimeout(() => {
        videoRefs.current[newIndex]?.play();
        setCurrentPlaying(newIndex);
        animateProgress(newIndex);
      }, 100);
    }
  };

  const handleNextSlide = () => {
    if (swiperInstance) {
      if (currentPlaying !== null) {
        videoRefs.current[currentPlaying]?.pause();
        cancelAnimationFrame(animationFrameRefs.current[currentPlaying]);
      }
      swiperInstance.slideNext();
      const newIndex = swiperInstance.realIndex;
      setTimeout(() => {
        videoRefs.current[newIndex]?.play();
        setCurrentPlaying(newIndex);
        animateProgress(newIndex);
      }, 100);
    }
  };

  const animateProgress = (index) => {
    const videoEl = videoRefs.current[index];
    if (!videoEl) return;

    const updateProgress = () => {
      const realTime = videoEl.currentTime;
      setSmoothTimes((prev) => {
        const prevSmoothTime = prev[index] || 0;
        const diff = realTime - prevSmoothTime;
        const step = diff * 0.15;
        return { ...prev, [index]: prevSmoothTime + step };
      });
      animationFrameRefs.current[index] = requestAnimationFrame(updateProgress);
    };

    animationFrameRefs.current[index] = requestAnimationFrame(updateProgress);
  };

  const handleSlideChange = (swiper) => {
    const activeIndex = swiper.realIndex;

    videoRefs.current.forEach((video, index) => {
      if (video) {
        if (index === activeIndex) {
          video.play();
          animateProgress(index);
        } else {
          video.pause();
          cancelAnimationFrame(animationFrameRefs.current[index]);
        }
      }
    });

    setCurrentPlaying(activeIndex);
    setCurrentSlideIndex(activeIndex);
  };

  const handleSlideClick = (index, swiperSlide) => {
    if (swiperInstance) {
      // Получаем реальный индекс слайда
      const realIndex = swiperSlide?.dataset?.swiperSlideIndex
        ? parseInt(swiperSlide.dataset.swiperSlideIndex, 10)
        : index;

      // Пауза текущего видео, если оно воспроизводится
      if (currentPlaying !== null) {
        videoRefs.current[currentPlaying]?.pause();
        cancelAnimationFrame(animationFrameRefs.current[currentPlaying]);
      }

      // Перемещаем к нужному слайду
      swiperInstance.slideToLoop(realIndex, 500); // Используем slideToLoop для корректной работы с loop

      // Воспроизводим видео на новом активном слайде
      setTimeout(() => {
        videoRefs.current[realIndex]?.play();
        setCurrentPlaying(realIndex);
        animateProgress(realIndex);
        setCurrentSlideIndex(realIndex);
      }, 100);
    }
  };

  const toggleMute = () => {
    setIsMuted((prev) => !prev);
    if (currentPlaying !== null) {
      videoRefs.current[currentPlaying].muted = !isMuted;
    }
  };

  const toggleFullscreen = () => {
    if (swiperInstance) {
      setCurrentSlideIndex(swiperInstance.realIndex);
    }
    setFullscreenSlide((prev) => !prev);
  };

  useEffect(() => {
    if (swiperInstance) {
      swiperInstance.update();
      setTimeout(() => {
        swiperInstance.slideToLoop(currentSlideIndex, 0);
      }, 50);
    }
  }, [fullscreenSlide, swiperInstance]);

  const handleLoadedMetadata = (index) => (e) => {
    setDurations((prev) => ({ ...prev, [index]: e.target.duration }));
  };

  const circumference = 2 * Math.PI * 16;

  return (
    <>
      <h3 className="genn-CommentsModal-title">{LocalText.CommentsModal.title}</h3>
      <div id="comments" className="genn-CommentsModal-mobil">
        <div className="genn-CommentsModal-modalcontainIcons">
          <div className={`genn-fl-row genn-CommentsModel-2-block ${isWhite ? "text-white" : ""}`}>
            {linkCat.map((cat, idx) => (
              <div
                key={idx}
                className="genn-CommentsModel-2-block-menu"
                data-cat={cat}
                onClick={() => handleCategoryClick(cat)}
              >
                <div className="w-[40px] h-[40px]">
                  <img
                    className={`${isWhite ? "" : "adm-black"}`}
                    src={[icon1, icon2, icon3, icon4, icon5][idx]}
                    alt={LocalText.Header.MenuIco[`mi${idx + 1}`]}
                  />
                </div>
                <div className="genn-CommentsModel-2-block-menu-text">
                  {LocalText.Header.MenuIco[`mi${idx + 1}`]}
                </div>
              </div>
            ))}
          </div>
        </div>
        <div className={`genn-Model-slider-overlay flex-1 fle ${fullscreenSlide ? "fullscreen-slide" : ""}`}>
          <Swiper
            key={fullscreenSlide ? "fullscreen" : "normal"}
            onSwiper={setSwiperInstance}
            spaceBetween={30}
            centeredSlides={true}
            loop={canLoop}
            initialSlide={currentSlideIndex}
            onSlideChange={handleSlideChange}
            breakpoints={{
              1920: { slidesPerView: cap(6) },
              1440: { slidesPerView: cap(5.3) },
              1200: { slidesPerView: cap(5.3), spaceBetween: 11 },
              700: {
                slidesPerView: cap(3),
                slidesOffsetAfter: 100,
                slidesOffsetBefore: 100,
                centeredSlides: true,
                spaceBetween: 11,
              },
              500: {
                slidesPerView: cap(2),
                slidesOffsetAfter: 100,
                slidesOffsetBefore: 100,
                centeredSlides: true,
                spaceBetween: 11,
              },
              414: {
                slidesPerView: cap(fullscreenSlide ? 1.2 : 1.5),
                centeredSlides: true,
                spaceBetween: 20,
              },
              375: {
                slidesPerView: cap(fullscreenSlide ? 1.2 : 1.3),
                centeredSlides: true,
                spaceBetween: 20,
              },
              360: {
                slidesPerView: cap(fullscreenSlide ? 1.2 : 1.3),
                centeredSlides: true,
                spaceBetween: 20,
              },
            }}
          >
            {filteredVideos.map((video, index) => {
              const smoothTime = smoothTimes[index] || 0;
              const duration = durations[index] || 0;
              const progressOffset = duration ? circumference - (smoothTime / duration) * circumference : circumference;

              return (
                <SwiperSlide
                  key={index}
                  className={`${video.category} ${fullscreenSlide ? "fullscreen-slide" : ""}`}
                  onClick={(e) => handleSlideClick(index, e.currentTarget)}
                >
                  <div className="vid-container">
                    <video
                      ref={(el) => (videoRefs.current[index] = el)}
                      src={video.video}
                      poster={image1}
                      loop
                      muted={isMuted}
                      playsInline
                      preload="none"
                      onLoadedMetadata={handleLoadedMetadata(index)}
                    />
                    <button className="videoSlider-mute" onClick={toggleMute}>
                      {isMuted ? <i className="fa-solid fa-volume-xmark"></i> : <i className="fa-solid fa-volume-high"></i>}
                    </button>
                    <button className="videoSlider-fullscrean" onClick={() => toggleFullscreen()}>
                      {fullscreenSlide ? (
                        <i className="fa-solid fa-down-left-and-up-right-to-center"></i>
                      ) : (
                        <i className="fa-solid fa-up-right-and-down-left-from-center"></i>
                      )}
                    </button>
                    <div className="videoSlider-banner reviews">
                      <div className="videoSlider-circular-progress">
                        <svg width="36" height="36">
                          <circle
                            className="videoSlider-progress-ring__background"
                            cx="18"
                            cy="18"
                            r="16"
                            fill="transparent"
                            stroke="#ccc"
                            strokeWidth="1"
                          />
                          <circle
                            className="videoSlider-progress-ring__progress"
                            cx="18"
                            cy="18"
                            r="16"
                            fill="transparent"
                            stroke="#4caf50"
                            strokeWidth="1"
                            strokeDasharray={circumference}
                            strokeDashoffset={progressOffset}
                            transform="rotate(-90 18 18)"
                          />
                        </svg>
                        <button
                          onClick={(e) => {
                            e.stopPropagation(); // Предотвращаем вызов handleSlideClick при клике на кнопку
                            handlePlayPause(index);
                          }}
                          className="videoSlider-circular-button"
                        >
                          {currentPlaying === index ? (
                            <i className="fa-solid fa-pause"></i>
                          ) : (
                            <i className="fa-solid fa-play"></i>
                          )}
                        </button>
                      </div>
                    </div>
                  </div>
                </SwiperSlide>
              );
            })}
          </Swiper>
        </div>
      </div>
    </>
  );
}

export default CommentsModal;