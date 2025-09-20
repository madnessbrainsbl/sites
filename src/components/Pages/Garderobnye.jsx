import Baner from "../Baner/Baner";
import axios from "axios";
import React, { useEffect, useState } from "react";
import video1 from "../../assets/images/bg-video/GarderobnyePc.mp4";
import video2 from "../../assets/images/bg-video/GarderobnyeMob.mp4";
import TextComponentbottom from "../Module/Text/TextComponentbottom";
import { LocalText } from "../LocalText/LocalText";
import SliderBaner from "../SliderBaner/SliderBaner";
import ShkafGategory from "./ShkafComponents/ShkafGategory";
import IconsBox from "../IconsBox/IconsBox";
import CommentsModal from "../CommentsModal/CommentsModal";
import Footer from "../Footer/Footer";
import video3 from "../../assets/images/bg-video/GarderobnyeN3.mp4";
import { apiUrl } from "../../config";
import CardVideoComponent from "../Module/GarderobnyeModel/CardVideoComponent";
import LoadingComponent from "../Module/LoadingComponent/LoadingComponent";
import Perfectlayout from "./ShkafComponents/Perfectlayout";
import "./GarderobnyeComponent/GarderobnyePerfectLayout.css";
import { Helmet } from "react-helmet";
function Garderobnye({ openModal, openModalM, openVideoModal }) {
  const [kitchenData, setKitchenData] = useState(null);

  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    axios
      .get(apiUrl + "/api/garderobnye") 
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

  return (
    <>
      <Helmet>
        <title>{data.title || 'Гардеробные'} </title> 
        <meta name="description" content={data.description} />
    </Helmet> 
      <div
        id="genn-kitchen-Banner"
        className="genn-Baner-container kitchenBanerBlock"
      >
        <Baner
          videoBg={"https://l.okdeal.ru/storage/" + data.video_url}
          videoBg2={"https://l.okdeal.ru/storage/" + data.video_url_m}
          buttons={true}
        />
      </div>
      <div className="genn-Text-container  PrikhozhieTextbottom">
        <TextComponentbottom
          title={data.title_description}
          description={data.text_description}
          description2={LocalText.Prikhozhie.PrikhozhieTextBov.des2}
          titleButton={LocalText.Prikhozhie.PrikhozhieTextBov.titleButton}
          classNameComponent={"genn-PrikhozhieTextbottom-container"}
        />{" "}
      </div>
      <div className="genn-SliderBaner-container genn-Prikhozhie-SliderBaner ">
        <SliderBaner openModal={ openModal } images={data.image_slider} openVideoModal={openVideoModal}/>
      </div>
      <div className="genn-SliderImg genn-shkaf-img Prikhozhie ">
        <ShkafGategory categorySlide={data.category} />
      </div>
      <div className="genn-Garderobnye-BannerText">
        <Perfectlayout
          video={apiUrl+"/storage/" + data.video_url_2}
          title={data.title_h2}
          titleTextComponent={data.title_description_2}
          desTextComponent={data.text_description_2}
        />
        <div className="genn-Garderobnye-BannerText-des-ButtonContainer">
          <button onClick={openModalM} className="genn-Baner-button-v2 anigenn">Рассчитать стоимость</button>
        </div>
      </div>
      <CardVideoComponent 
      title={data.cart_video_title}
      videos={data.cart_video}
      title2={data.cart_video_title_bottom} 
      openModal={openModal}
      />
      <div className="k relative">
      <Baner
          videoBg={"https://l.okdeal.ru/storage/" + data.video_url_3}
          videoBg2={"https://l.okdeal.ru/storage/" + data.video_url_3}
          scrollVideo={true}
        />
      </div>
      <div id="genn-IconsBox" className="genn-IconsBox genn-kitchen-IconsBox">
        <IconsBox iconsData={data.icons} />
      </div>
      <div
        id="genn-CommentsModal"
        className="genn-CommentsModal genn-kitchen-CommentsModal"
      >
        <CommentsModal reviews={data.video_reviews} />
      </div>

      <footer className="footer">
        <Footer />
      </footer>
    </>
  );
}
export default Garderobnye;
