import { useState, useEffect } from "react";
import "./CustomCabinet.css";
import image1 from "../../../assets/images/bg-image/CustomCabinet1.png";
import image2 from "../../../assets/images/bg-image/CustomCabinet2.png";
import { LocalText } from "../../LocalText/LocalText";
import { wUrl } from "../../../config";
function CustomCabinet({ image, title, description }) {
  const [poster, setPoster] = useState(image1);
  useEffect(() => {
    const updatePoster = () => {
      if (window.innerWidth > 1919) {
        setPoster(image1);
      }
      if (window.innerWidth >= 1400 && window.innerWidth <= 1919) {
        setPoster(image1);
      }
      if (window.innerWidth >= 1200 && window.innerWidth <= 1440) {
        setPoster(image1);
      }
      if (window.innerWidth >= 768 && window.innerWidth < 1200) {
        setPoster(image2);
      }
      if (window.innerWidth >= 414 && window.innerWidth <= 768) {
        setPoster(image2);
      }
      if (window.innerWidth >= 375 && window.innerWidth <= 414) {
        setPoster(image2);
      }
      if (window.innerWidth >= 360 && window.innerWidth <= 414) {
        setPoster(image2);
      }
    };

    updatePoster(); // Initial check
    window.addEventListener("resize", updatePoster); // Listen for resize

    // Cleanup
    return () => {
      window.removeEventListener("resize", updatePoster);
    };
  }, []);
  return (
    <>
      <div className="genn-CustomCabinet-imageContainer">
        <img src={poster} alt={LocalText.shkaf.CustomCabinet.title} />
      </div>
      <div className="genn-CustomCabinet-TextContainer">
        <div className="genn-CustomCabinet-TextContainer-title anigenn">{title}</div>
        <div
          className="genn-CustomCabinet-TextContainer-des anigenn"
          dangerouslySetInnerHTML={{ __html: description }}
        ></div>
        <div className="genn-CustomCabinet-TextContainer-buttonDes">
          <button
            className="genn-CustomCabinet-TextContainer-button genn-Baner-button-v1 anigenn"
            onClick={() => {
              window.open(
                wUrl,
                "_blank"
              );
            }}
          >
            {LocalText.shkaf.CustomCabinet.titleButton}
          </button>
        </div>
      </div>
    </>
  );
}
export default CustomCabinet;
