import React, { useEffect, useState } from "react";
import axios from "axios";
import Baner from "../Baner/Baner";
import { LocalText } from "../LocalText/LocalText";
import "./KitchenComponents/BannerKitchen/BannerKitchen.css";
import "./KitchenComponents/IconBoxKitchen.css";
import SliderBaner from "../SliderBaner/SliderBaner";
// import TextComponentbottom from "../Module/Text/TextComponentKitchen";
import "./KitchenComponents/SliderBanner/SliderBanner.css";
import KitchenGategory from "./KitchenComponents/KitchenGategory/KitchenGategory";
import IconsBox from "../IconsBox/IconsBox";
import CommentsModal from "../CommentsModal/CommentsModal";
import TwoButtonV2 from "../TwoButtonV2/TwoButtonV2";
import TemplateNewsV1 from "../Module/News/NewsTemplate/TemplateNewsV1";
import TextComponent from "../Module/Text/TextComponent";
import Footer from "../Footer/Footer";
import TextComponentbottom from "../Module/Text/TextComponentbottom";
import { apiUrl } from "../../config";
import LoadingComponent from "../Module/LoadingComponent/LoadingComponent";
import figma from "../../assets/images/figma/kitchen_414.png";
import { Helmet } from "react-helmet";
function KitchenPage({openModal, openModalM,openVideoModal}) {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    axios
  .get(apiUrl+"/api/kitchen")
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


console.log('data ' + {data});

  return (
    <>
     <Helmet>
        <title>{data.title}</title> 
        <meta name="description" content={data.description} />
    </Helmet> 
    
      <div
        id="genn-kitchen-Banner"
        className="genn-Baner-container kitchenBanerBlock text-[#000]"
      >
        <TextComponent
          title="До 30 декабря закажите шкаф, или кухню и сэкономите до 10 000 руб на покупку техники у наших партнёров."
          description="Заказать выезд дизайнера"
          classNameTextTitle={"genn-Baner-text  kitchenBaner"}
          classNameTitle={"genn-kitchenBaner-title"}
          classNamedescription={"genn-kitchenBaner-des"}
        />
      </div>
      <div className="k relative bg-gray-light">
        <Baner
          videoBg={apiUrl+"/storage/" + data.video_url}
          videoBg2={apiUrl+"/storage/" + data.video_url_m}
         buttons={true}
        />
      </div>
      <div id="genn-kitchen-SliderBaner" className="genn-SliderBaner-container">
        <TextComponentbottom
          title={data.title_h2}
          description={data.description_text}
        description2={LocalText.Kitchen.sliderBanner.description2}
        titleButton={LocalText.Kitchen.sliderBanner.titleButton}
        classNameComponent={"genn-TextComponentKitchen"}
        />
  
    <SliderBaner openModal={openModal} images={data.image_slider } openVideoModal={openVideoModal}/>
      </div>
      <div
        id="genn-Categoryes "
        className="genn-Categoryes genn-kitchen-category"
      >
        <KitchenGategory kitchen_data={data.category} />
      </div>
      <div id="genn-KitchenCards " className="genn-KitchenCards ">
      <TemplateNewsV1 descriptionSlider={data.description_slider} />
         
      </div>
      <div id="genn-IconsBox" className="genn-IconsBox genn-kitchen-IconsBox">
      <h2 className="adm-text-description">Выберите кухню на заказ 
      и погружайтесь в мир вдохновения и гармонии!</h2>
      <IconsBox iconsData={data.icons}/>
      </div>
      <div
        id="genn-CommentsModal"
        className="genn-CommentsModal genn-kitchen-CommentsModal"
      >
        <CommentsModal reviews={data.video_reviews} />
      </div>
      <div
        id="genn-TwoButtonV2"
        className="genn-TwoButtonV2 genn-kitchen-TwoButtonV2"
      >
        <TwoButtonV2 />
      </div>
      <footer className="footer">
        <Footer figma={figma} />
      </footer>
    </>
  );
}
export default KitchenPage;
 