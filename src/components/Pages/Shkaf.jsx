import Baner from "../Baner/Baner";
import axios from "axios";
import React, { useEffect, useState } from "react";
// import TextComponentbottom from "../Module/Text/TextComponentKitchen";
import SliderBaner from "../SliderBaner/SliderBaner";
import { LocalText } from "../LocalText/LocalText";
import "./ShkafComponents/TextComponentShkaf.css";
import ShkafGategory from "./ShkafComponents/ShkafGategory";
import ShkafVideoButton from "./ShkafComponents/ShkafVideoButton";
import Perfectlayout from "./ShkafComponents/Perfectlayout";
import TopLevel from "./ShkafComponents/TopLevel";
import CustomCabinet from "./ShkafComponents/CustomCabinet";
import IconsBox from "../IconsBox/IconsBox";
import CommentsModal from "../CommentsModal/CommentsModal";
import TwoButtonV2 from "../TwoButtonV2/TwoButtonV2";
import FooterW from "../Footer/FooterW";

import TemplateNewsV1 from "../Module/News/NewsTemplate/TemplateNewsV1";
import TextComponentbottom from "../Module/Text/TextComponentbottom";
import { apiUrl } from "../../config";
import "../Pages/ShkafComponents/Shkaf.css";
import LoadingComponent from "../Module/LoadingComponent/LoadingComponent";
import { Helmet } from "react-helmet";
function Shkaf({openModal, openModalM, openVideoModal}) {
  const [kitchenData, setKitchenData] = useState(null);

  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    axios
      .get(apiUrl + "/api/shkaf")
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

  if (loading) {
    return <LoadingComponent />;
  }

  if (!data) {
    return <div>Error loading data</div>;
  }

  console.log("data.description_text " + data.text_description);
  console.log("ddata.title " + data.title);
  console.log(data.video_url);

  return (
    <>
     <Helmet>
        <title>{data.title || "Шкафы"}</title> 
        <meta name="description" content={data.description} />
    </Helmet> 
    <div id="genn-shkaf" className="shkafComponent text-[#000]">
      <div
        id="genn-shkaf-Banner"
        className="genn-Baner-container shkafBanerBlock bg-white"
      >
        <Baner buttons={true} videoBg={apiUrl + "/storage/" + data.video_url} videoBg2={apiUrl + "/storage/" + data.video_url_m}/>
      </div>
      <div className="genn-Text-container">
        <TextComponentbottom
          title={LocalText.shkaf.sliderBanner.title}
          description={data.text_description}
          description2={''}
          titleButton={LocalText.shkaf.sliderBanner.textButton}
          classNameComponent={"genn-shkaff"}
        />
      </div>
      <div className="genn-SliderBaner-container">
        <SliderBaner openModal={openModal} images={data.image_slider} openVideoModal={openVideoModal}/>
      </div>
      <div className="genn-SliderImg genn-shkaf-img">
        <ShkafGategory categorySlide={data.category_slide} />
      </div>
      <div className="genn-shkafVideoButton ">
        <ShkafVideoButton
          title={"Встроенный шкаф - "}
          description={"скрытый порядок"}
          videoBg={apiUrl + "/storage/" + data.video_url_2}
          videoBg2={apiUrl + "/storage/" + data.video_url_2}
          title2={"Гармония с пространством."}
          description2={
            "Шкаф, изготовленный по индивидуальным размерам, прекрасно вписывается даже в самые нестандартные уголки вашего дома. Вы можете использовать все пространство, от стены до стены, от пола до потолка"
          }
        />
      </div>
      
      <div className="genn-Perfectlayou ">
        <Perfectlayout
          title={data.title_h2_3}
          video={apiUrl + "/storage/" + data.video_url_3}
          titleTextComponent={LocalText.shkaf.Perfectlayout.titleTextComponent}
          desTextComponent={LocalText.shkaf.Perfectlayout.desTextComponent}
        />
      </div>
      <div className="genn-TopLevel ">
        <TopLevel
          imageBg
          title={"Функциональность на высшем уровне2"}
          title2={"Оптимизация функциональности."}
          description={data.call_tocation}
        />
      </div>
      <div className="genn-CustomCabinet">
        <CustomCabinet
          image
          title={"Шкаф на заказ"}
          description={data.call_tocation_2}
        />
      </div>
      <div className="genn-Perfectlayou genn-Perfectlayout-2 ">
        <Perfectlayout
          title={LocalText.shkaf.EmotionalConnection.title}
          video={apiUrl + "/storage/" + data.video_url_4}
          titleTextComponent={
            LocalText.shkaf.EmotionalConnection.titleTextComponent
          }
          desTextComponent={
            LocalText.shkaf.EmotionalConnection.desTextComponent
          }
        />
      </div>
      <div id="genn-KitchenCards " className="genn-KitchenCards genn-shkaf genn-color-bg-news-module-w">
        <TemplateNewsV1 descriptionSlider={data.description_slider} />
      </div>
      <div id="genn-IconsBox" className="genn-IconsBox ">
        <IconsBox iconsData={data.icons} />
      </div>
      <div id="genn-CommentsModal" className="genn-CommentsModal ">
        <CommentsModal reviews={data.video_reviews} isWhite={false}/>
      </div>
      <div id="genn-TwoButtonV2" className="genn-TwoButtonV2 ">
        <TwoButtonV2
          text1={LocalText.TwoButtonV2.button1}
          text2={LocalText.TwoButtonV2.button2}
        />
      </div>
      <footer className="Shkaffooter">
        <FooterW />
      </footer>
    </div>
    </> );
}
export default Shkaf;
