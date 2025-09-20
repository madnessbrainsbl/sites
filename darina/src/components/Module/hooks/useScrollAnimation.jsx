import { useEffect } from "react";

const useScrollAnimation = () => {
  useEffect(() => {
    let ticking = false;

    const handleScroll = () => {
      if (!ticking) {
        window.requestAnimationFrame(() => {
          updateClipPath();
          ticking = false;
        });
        ticking = true;
      }
    };

    const updateClipPath = () => {
      const videoElements = document.querySelectorAll(".genn-Baner-video");
      const windowHeight = window.innerHeight;

      videoElements.forEach((videoElement) => {
        const rect = videoElement.getBoundingClientRect();
        const video = videoElement.querySelector(".video-container");

        if (!video) {
         // console.warn(" Элемент .video-container не найден в:", videoElement);
          return; // Пропускаем этот элемент
        }

        const startTrigger = 200;
        const endTrigger = windowHeight - windowHeight / 3;

        const progress = Math.min(
          Math.max((startTrigger - rect.top) / (endTrigger - startTrigger), 0),
          1
        );
        const insetValue = (3.25 * progress).toFixed(5);
        const borderRadius = (44 * progress).toFixed(4);
        const insetValueMatrix = (2 * progress).toFixed(5);

        const m1 = 1 - insetValueMatrix;

        videoElement.style.clipPath = `inset(${insetValue}% round ${borderRadius}px)`;
        video.style.paddingRight = 2 + parseFloat(insetValueMatrix) + "%";
      });
    };

    
    const observer = new MutationObserver(updateClipPath);
    observer.observe(document.body, { childList: true, subtree: true });

    
    window.addEventListener("scroll", handleScroll);

   
    return () => {
      window.removeEventListener("scroll", handleScroll);
      observer.disconnect();
    };
  }, []);
};

export default useScrollAnimation;
