import React, { useState, useEffect } from "react";
import "./GoToTop.css";
import imageButton from "../../../assets/images/ico/Buttons/next-2.svg";

const ScrollToTop = () => {
  const [isVisible, setIsVisible] = useState(false);
  const [lastScrollY, setLastScrollY] = useState(0);

  const handleScroll = () => {
    const currentScrollY = window.scrollY;

    // Проверяем направление скролла
    if (currentScrollY < lastScrollY && currentScrollY > 300) {
      setIsVisible(true); // Скроллим вверх → показываем кнопку
    } else {
      setIsVisible(false); // Скроллим вниз → скрываем кнопку
    }

    setLastScrollY(currentScrollY);
  };

  useEffect(() => {
    window.addEventListener("scroll", handleScroll);
    return () => window.removeEventListener("scroll", handleScroll);
  }, [lastScrollY]);

  const scrollToTop = () => {
    window.scrollTo({ top: 0, behavior: "smooth" });
  };

  return (
    <div className={`genn-go-to-top ${isVisible ? "visible" : ""}`} onClick={scrollToTop}>
      <img src={imageButton} alt="Scroll to top" />
    </div>
  );
};

export default ScrollToTop;
