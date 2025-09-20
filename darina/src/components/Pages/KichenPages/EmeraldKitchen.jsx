import React, { useEffect, useState } from "react";
import axios from "axios";
import { useLocation } from "react-router-dom"; // Заменяем useParams на useLocation
import BannerTextShadow from "../../Module/BannerTextShadow/BannerTextShadow";
import TextComponent from "../../Module/Text/TextComponent";
import TwoButtonV2 from "../../TwoButtonV2/TwoButtonV2";
import "./EmeraldKitchen.css";
import ImageCategoryKitchen from "../../Module/ImageCategoryKitchen/ImageCategoryKitchen";
import VideoBgButton from "../../Module/VideoBgButton/VideoBgButton";
import imageVideoBg from "../../../assets/images/bg-image/imageVideoz.png";
import TextForKitchenPages from "../../Module/TextForKitchenPages/TextForKitchenPages";
import FeelWarm from "../../FeelWarm/FeelWarm";
import FeelWarmLite from "../../FeelWarmLite/FeelWarmLite";
import FooterW from "../../Footer/FooterW";
import { apiUrl } from "../../../config";
import LoadingComponent from "../../Module/LoadingComponent/LoadingComponent";
import { Helmet } from "react-helmet";

function EmeraldKitchen({ openModal, title, description, keywords }) {
  const [data, setData] = useState(null);
  const [error, setError] = useState(null);
  const location = useLocation(); // Получаем текущий URL

  useEffect(() => {
    const fetchKitchenData = async () => {
      // Извлекаем slug из пути URL (например, /kitchen/arizona -> arizona)
      const pathParts = location.pathname.split("/"); // Разбиваем путь на части
      const slug = pathParts[pathParts.length - 1]; // Берём последнюю часть (arizona)

      if (!slug || slug === "kitchen") {
        setError("Slug не определён");
        return;
      }

      const fullPath = `${apiUrl}/api/kitchen/${slug}`;
      console.log("fullPath:", fullPath);
      console.log("slug:", slug);

      try {
        const response = await axios.get(fullPath);
        console.log("API response:", response.data);
        if (response.data.success) {
          setData(response.data.data);
        } else {
          setError("Не удалось загрузить данные.");
        }
      } catch (error) {
        console.error("Ошибка при загрузке данных:", error);
        setError("Ошибка при загрузке данных.");
      }
    };

    fetchKitchenData();
  }, [location.pathname]); // Зависимость от пути URL

  if (error) {
    return <div className="error-message">{error}</div>;
  }

  if (!data) {
    return <LoadingComponent />;
  }

  console.log("data.image_galledy_3:", data.image_galledy_3);
  return (
    <>
      <Helmet>
        <title>{ data.title}</title>
        <meta name="description" content={description || "description"} />
        <meta name="keywords" content={keywords || "keywords"} />
      </Helmet>

      <div id="EmeraldKitchen" className="genn-EmeraldKitchen bg-gray-light">
        <BannerTextShadow
          video1={`${apiUrl}/storage/${data.video_url}`}
          video2={`${apiUrl}/storage/${data.video_url}`}
          text={data.title}
        />

        <div className="genn-EmeraldKitchen-TextComponent">
          <TextComponent
            classNameTextTitle={"genn-EmeraldKitchen-TextComponent-container"}
            classNameTitle={"hidden"}
            classNamedescription={"genn-EmeraldKitchen-TextComponent-des"}
            title={data.title}
            description={data.text_description}
          />
          <div className="genn-EmeraldKitchen-TextComponent-buttons">
            <TwoButtonV2 text1={"Рассчитать стоимость"} text2={"Заказать звонок"} />
          </div>
        </div>

        {data.image_galledy?.length ? (
          <ImageCategoryKitchen imageGallery={data.image_galledy} />
        ) : null}
        <VideoBgButton
          video1={`${apiUrl}/storage/${data.video_back}`}
          poster={imageVideoBg}
          text={data.video_title}
           text_color={data.text_color}
          textButton={"Бесплатный дизайн проект"}
          openModal={openModal}
        />

        <FeelWarmLite imageGallery={data.image_galledy_2} openModal={openModal} />
        <FeelWarm imageGallery={data.image_galledy_3} openModal={openModal} />

        <TextForKitchenPages openModal={openModal} />
        <FooterW />
      </div>
    </>
  );
}

export default EmeraldKitchen;