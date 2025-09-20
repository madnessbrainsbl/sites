import { LocalText } from "../LocalText/LocalText";
import { useState, useRef, useEffect } from "react";
import "./Baner.css";
import image1 from "../../assets/images/bg-image/BanerBg.png";
import image3 from "../../assets/images/bg-image/BanerBgsmall.png";
import ModelCall from "../Module/ModelCall/ModelCall";
import { wUrl } from "../../config";

function Baner({ videoBg, videoBg2, buttons = false, scrollVideo = false }) {
  const videoRef = useRef(null);
  const containerRef = useRef(null);
  const [currentTime, setCurrentTime] = useState(0);
  const [smoothTime, setSmoothTime] = useState(0);
  const [duration, setDuration] = useState(0);
  const [isPlaying, setIsPlaying] = useState(true);
  const [poster, setPoster] = useState(image1);
  const [videoSrc, setVideoSrc] = useState(null); // Видео не загружается сразу
  const [isImage, setIsImage] = useState(false);
  const animationFrameRef = useRef(null);

  const isImageFile = (src) => /\.(png|jpe?g|gif|webp)$/i.test(src);

  // Обновление постера и выбор видео/изображения
  useEffect(() => {
    const updatePoster = () => {
      const selectedBg = window.innerWidth >= 360 && window.innerWidth <= 767 ? videoBg2 : videoBg;

      if (isImageFile(selectedBg)) {
        setIsImage(true);
        setPoster(selectedBg);
        setVideoSrc(null);
      } else {
        setIsImage(false);
        setPoster(window.innerWidth >= 360 && window.innerWidth <= 767 ? image3 : image1);
        setVideoSrc(null); // Пока не устанавливаем videoSrc
      }
    };

    updatePoster();
    window.addEventListener("resize", updatePoster);

    return () => {
      window.removeEventListener("resize", updatePoster);
    };
  }, [videoBg, videoBg2]);

  // Intersection Observer для загрузки видео
  useEffect(() => {
    if (isImage || !containerRef.current) return;

    const observer = new IntersectionObserver(
      (entries) => {
        const [entry] = entries;
        if (entry.isIntersecting) {
          // Когда контейнер виден, устанавливаем источник видео
          const selectedBg = window.innerWidth >= 360 && window.innerWidth <= 767 ? videoBg2 : videoBg;
          setVideoSrc(selectedBg);
          observer.disconnect(); // Отключаем наблюдатель после загрузки
        }
      },
      {
        root: null, // Относительно окна браузера
        threshold: 0.1, // Срабатывает, когда 10% элемента видно
      }
    );

    observer.observe(containerRef.current);

    return () => {
      observer.disconnect();
    };
  }, [isImage, videoBg, videoBg2]);

  // Загрузка метаданных видео
  useEffect(() => {
    if (isImage || !videoSrc || !videoRef.current) return;

    const videoElement = videoRef.current;
    const handleMetadataLoaded = () => {
      setDuration(videoElement.duration);
    };

    videoElement.addEventListener("loadedmetadata", handleMetadataLoaded);

    return () => {
      videoElement.removeEventListener("loadedmetadata", handleMetadataLoaded);
    };
  }, [videoSrc, isImage]);

  // Логика стандартного воспроизведения
  useEffect(() => {
    if (isImage || !videoSrc || scrollVideo || !videoRef.current) return;

    const videoElement = videoRef.current;
    const handleTimeUpdate = () => {
      setCurrentTime(videoElement.currentTime);
    };
    const handleEnded = () => {
      setCurrentTime(0);
      setSmoothTime(0);
      videoElement.currentTime = 0;
      if (isPlaying) videoElement.play();
    };

    const animateProgress = () => {
      setSmoothTime((prevSmoothTime) => {
        const targetTime = currentTime;
        const diff = targetTime - prevSmoothTime;
        const step = diff * 0.15;
        return prevSmoothTime + step;
      });
      animationFrameRef.current = requestAnimationFrame(animateProgress);
    };

    videoElement.addEventListener("timeupdate", handleTimeUpdate);
    videoElement.addEventListener("ended", handleEnded);

    if (isPlaying) {
      videoElement.play().catch((err) => console.error("Ошибка воспроизведения:", err));
      animationFrameRef.current = requestAnimationFrame(animateProgress);
    }

    return () => {
      videoElement.removeEventListener("timeupdate", handleTimeUpdate);
      videoElement.removeEventListener("ended", handleEnded);
      cancelAnimationFrame(animationFrameRef.current);
    };
  }, [videoSrc, isImage, isPlaying, currentTime, scrollVideo]);

  // Логика управления видео через скролл
  useEffect(() => {
    if (!scrollVideo || isImage || !videoSrc || !duration || !containerRef.current) return;

    const videoElement = videoRef.current;

    const handleScroll = () => {
      const rect = containerRef.current.getBoundingClientRect();
      const windowHeight = window.innerHeight;
      const startPoint = 0;
      const endPoint = windowHeight;
      const currentPosition = rect.bottom;

      if (rect.bottom < startPoint || rect.top < 0) {
        videoElement.currentTime = 0;
        videoElement.pause();
        return;
      }

      const totalDistance = endPoint - startPoint;
      const currentDistance = currentPosition - startPoint;
      const progressPercentage = Math.max(0, Math.min(1, currentDistance / totalDistance));
      const newTime = progressPercentage * duration;

      videoElement.currentTime = Math.min(Math.max(newTime, 0), duration);
      videoElement.pause();
      setCurrentTime(videoElement.currentTime);
    };

    window.addEventListener("scroll", handleScroll);
    handleScroll();

    return () => {
      window.removeEventListener("scroll", handleScroll);
    };
  }, [scrollVideo, videoSrc, duration, isImage]);

  // Извлечение постера из видео
  useEffect(() => {
    if (isImage || !videoSrc || !videoRef.current) return;

    const videoElement = videoRef.current;
    const handleMetadataLoaded = () => {
      videoElement.currentTime = 0.1;
      setTimeout(() => {
        const canvas = document.createElement("canvas");
        canvas.width = videoElement.videoWidth;
        canvas.height = videoElement.videoHeight;
        const ctx = canvas.getContext("2d");
        ctx.drawImage(videoElement, 0, 0, canvas.width, canvas.height);
        setPoster(canvas.toDataURL("image/png"));
      }, 100);
    };

    videoElement.addEventListener("loadedmetadata", handleMetadataLoaded);
    return () => videoElement.removeEventListener("loadedmetadata", handleMetadataLoaded);
  }, [videoSrc, isImage]);

  const togglePlay = () => {
    if (isImage || scrollVideo) return;
    const videoElement = videoRef.current;
    if (isPlaying) {
      videoElement.pause();
      cancelAnimationFrame(animationFrameRef.current);
    } else {
      videoElement.play().catch((err) => console.error("Ошибка воспроизведения:", err));
      animationFrameRef.current = requestAnimationFrame(animateProgress);
    }
    setIsPlaying(!isPlaying);
  };

  const [isModalOpen, setIsModalOpen] = useState(false);
  const openModal = () => setIsModalOpen(true);
  const closeModal = () => setIsModalOpen(false);

  const showButtons = buttons ? "show" : "";
  const circumference = 2 * Math.PI * 20;
  const progressOffset = duration ? circumference - (smoothTime / duration) * circumference : circumference;

  return (
    <>
      <div className="genn-Baner-video" ref={containerRef}>
        <div className="video-container">
          <div className="banner">
            {!isImage && !scrollVideo && (
              <div className="circular-progress" style={{ width: "50px", height: "50px" }}>
                <svg className="progress-ring" width="50" height="50">
                  <circle
                    className="progress-ring__background"
                    cx="25"
                    cy="25"
                    r="20"
                    strokeWidth="3"
                  />
                  <circle
                    className="progress-ring__progress"
                    cx="25"
                    cy="25"
                    r="20"
                    strokeWidth="3"
                    style={{
                      strokeDasharray: circumference,
                      strokeDashoffset: progressOffset,
                    }}
                  />
                </svg>
                <button onClick={togglePlay} className="circular-button">
                  {isPlaying ? <div className="genn-pause"></div> : <i className="fa-solid fa-play"></i>}
                </button>
              </div>
            )}
          </div>
        </div>
        {isImage ? (
          <img src={poster} alt="Banner" className="banner-image" />
        ) : (
          <video
            ref={videoRef}
            src={videoSrc} // Источник устанавливается динамически
            poster={poster}
            controls={false}
            muted
            autoPlay={!scrollVideo && !!videoSrc} // Воспроизведение только если есть источник
            loop={!scrollVideo}
            playsInline
            preload="metadata"
            crossOrigin="anonymous"
          />
        )}
      </div>

      <div className={"genn-Baner-button-container genn-fl-row " + showButtons}>
        <button
          className="genn-Baner-button-v1"
          onClick={() => window.open(wUrl, "_blank")}
        >
          Перейти в WhatsApp
        </button>
        <button className="genn-Baner-button-v2" onClick={openModal}>
          {LocalText.Baner.button2}
        </button>
      </div>

      {isModalOpen && <ModelCall setCloseModelHandler={closeModal} />}
    </>
  );
}

export default Baner;