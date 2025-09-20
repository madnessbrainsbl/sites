import React, { useEffect, useState } from "react";
import axios from "axios";
import whatsapp from "../../assets/images/ico/whatsApp.svg";
import telegram from "../../assets/images/ico/telegram.svg";
import vk from "../../assets/images/ico/vk.svg";
import tinkoff from "../../assets/images/ico/tinkoff.svg";
import mastercard from "../../assets/images/ico/mastercard.svg";
import mir from "../../assets/images/ico/mir.svg";
import visa from "../../assets/images/ico/visa.svg";
import youtube from "../../assets/images/ico/youtube.svg";
import cbp from "../../assets/images/ico/cbp.svg";
import cber from "../../assets/images/ico/cber.svg";
import logo from "../../assets/images/ico/logo.svg";

import { LocalText } from "../LocalText/LocalText";
import "./Footer.css";
import Logo from "../Module/Logo/LogoTip";
import { apiUrl } from "../../config";

function Footer({ figma }) {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [isFigmaVisible, setIsFigmaVisible] = useState(false);
  const [screenResolution, setScreenResolution] = useState({
    width: window.innerWidth,
    height: window.innerHeight,
  });
  const [deviceInfo, setDeviceInfo] = useState("Неизвестно");

  // Определяем разрешение и информацию об устройстве
  useEffect(() => {
    const handleResize = () => {
      setScreenResolution({
        width: window.innerWidth,
        height: window.innerHeight,
      });
    };

    // Попытка определить устройство на основе userAgent
    const userAgent = navigator.userAgent.toLowerCase();
    let device = "Неизвестно";

    if (/iphone/.test(userAgent)) {
      device = "iPhone";
    } else if (/ipad/.test(userAgent)) {
      device = "iPad";
    } else if (/android/.test(userAgent)) {
      device = "Android";
      if (/samsung/.test(userAgent) || /sm-/.test(userAgent)) {
        device = "Samsung";
      } else if (/huawei/.test(userAgent)) {
        device = "Huawei";
      } else if (/xiaomi/.test(userAgent)) {
        device = "Xiaomi";
      }
    } else if (/windows/.test(userAgent)) {
      device = "Windows";
    } else if (/macintosh/.test(userAgent)) {
      device = "Mac";
    }

    setDeviceInfo(device);
    window.addEventListener("resize", handleResize);
    return () => window.removeEventListener("resize", handleResize);
  }, []);

  useEffect(() => {
    axios
      .get(apiUrl + "/api/main")
      .then((response) => {
        if (response.data.success && response.data.data.length > 0) {
          setData(response.data.data[0]);
        } else {
          console.error("Unexpected API response structure", response.data);
          setData(null);
        }
        setLoading(false);
      })
      .catch((error) => {
        console.error("Error fetching data:", error);
        setLoading(false);
      });
  }, []);

  const toggleFigmaVisibility = () => {
    setIsFigmaVisible(!isFigmaVisible);
  };

  if (loading) {
    return <div>Loading...</div>;
  }

  if (!data) {
    return <div>Error loading data</div>;
  }

  return (
    <>
      {isFigmaVisible && <img src={figma} className="figma" />}
      {/* <button
        onClick={toggleFigmaVisibility}
        style={{
          position: "fixed",
          bottom: "10px",
          right: "10px",
          zIndex: 10001, // Выше изображения
          padding: "10px",
          backgroundColor: "#fff",
          border: "1px solid #ccc",
          borderRadius: "4px",
          cursor: "pointer",
        }}
      >
        {isFigmaVisible ? "Скрыть макет" : "Показать макет"}
      </button> */}
      <div className="line footer"></div>
      <div className="genn-Footer-firstSection">
        {/* <div className="genn-Footer-ico-contact-container genn-fl-row">
          {data.social_white.map((link) => (
            <a href={link.url} key={link.url}>
              <img src={link.image} alt="" />
            </a>
          ))}
        </div> */}
        <div className="genn-Footer-description">{LocalText.footer.description}</div>
        <div className="genn-Footer-ico-bay-conatiner genn-fl-row">
          <img src={mir} alt={LocalText.footer.description} />
          <img src={mastercard} alt={LocalText.footer.description} />
          <img src={cber} alt={LocalText.footer.description} />
          <img src={visa} alt={LocalText.footer.description} />
          <img src={cbp} alt={LocalText.footer.description} />
          <img src={tinkoff} alt={LocalText.footer.description} />
        </div>
      </div>
      <div className="genn-Footer-logo-container genn-fl-row">
        <div className="genn-Footer-email">{data.email}</div>
        <div className="genn-Footer-logo">
          <Logo logo={logo} />
        </div>
        <div className="genn-Footer-phone">{LocalText.footer.phoneNumber}</div>
      </div>

      {/* Фиксированная полоска с устройством и разрешением */}
      {/* <div className="screen-resolution-bar">
         {deviceInfo} | {screenResolution.width} x {screenResolution.height}
      </div> */}
    </>
  );
}

export default Footer;