import { useEffect } from "react";

const useAnimationElement = (className = "anigenn", delayStep = 200) => {
  useEffect(() => {
    if (!("IntersectionObserver" in window)) {
     // console.error("IntersectionObserver не поддерживается этим браузером.");
      return;
    }

    const observer = new IntersectionObserver((entries, observer) => {
      entries.forEach((entry, index) => {
        if (entry.isIntersecting) {
          // Добавляем задержку для каждого элемента
          setTimeout(() => {
            entry.target.classList.add("visible");
            observer.unobserve(entry.target);
          }, index * delayStep); // Увеличиваем задержку для каждого элемента

          setTimeout(() => {
            entry.target.classList.remove("anigenn");
          }, 900); 
        }
        
      });
    }, { threshold: 0.1 });

    const observeElements = () => {
      const elements = document.querySelectorAll(`.${className}`);
     // console.log(`🔍 Найдено элементов с классом ${className}:`, elements.length);
      elements.forEach((el) => observer.observe(el));
    };

    // Наблюдаем за динамическими изменениями DOM
    const mutationObserver = new MutationObserver(() => {
      observeElements();
    });

    mutationObserver.observe(document.body, {
      childList: true,
      subtree: true,
    });

    // Первичный запуск
    observeElements();

    return () => {
      observer.disconnect();
      mutationObserver.disconnect();
    };
  }, [className, delayStep]);
};

export default useAnimationElement;
