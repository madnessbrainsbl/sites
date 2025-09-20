import { useEffect, useState } from "react";
import axios from "axios";
import Baner from "../Baner/Baner";
import Categoryes from "../Categoryes/Categoryes";
import TwoButtonV1 from "../TwoButtonV1/TwoButtonV1";
import VideoSlider from "../VideoSlider/VideoSlider";
import ImegBox from "../ImegBox/ImegBox";
import IconsBox from "../IconsBox/IconsBox";
import CommentsModal from "../CommentsModal/CommentsModal";
import TwoButtonV2 from "../TwoButtonV2/TwoButtonV2";
import SliderBaner from "../SliderBaner/SliderBaner";
import TextComponent from "../Module/Text/TextComponent";
import Footer from "../Footer/Footer";
import { LocalText } from "../LocalText/LocalText";
import { apiUrl } from "../../config";
import LoadingComponent from "../Module/LoadingComponent/LoadingComponent";
import { Helmet } from "react-helmet";
import figma from "../../assets/images/figma/main_414.jpg";
import { useModal } from "../ModalContext"; // Импортируем useModal
import CustomModal from "../../components/Module/CustomModal/CustomModal"; // Импортируем CustomModal

function MainPage({ openModal, openVideoModal }) {
  const { modalIndex, videosData, closeModal } = useModal(); // Получаем данные из контекста
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    axios
      .get(apiUrl + "/api/main-page")
      .then((response) => {
        if (response.data?.success) {
          setData(response.data.data[0]);
        } else {
          console.error("API did not return success:", response.data);
        }
        setLoading(false);
      })
      .catch((error) => {
        console.error("Error fetching data:", error?.response || error);
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
        <title>{data.title}</title>
        <meta name="description" content={data.description} />
      </Helmet>
      {/* Баннер */}
      <div id="genn-Baner" className="genn-Baner-container bg-gray">
        <TextComponent
          title={data.text_description || LocalText.Baner.title}
          description="Мебель на заказ стала доступнее"
          classNameTextTitle={"genn-Baner-text genn-SliderBaner-text-container"}
          classNamedescription={"genn-SliderBaner-text-des"}
          classNameTitle={"genn-SliderBaner-text-title"}
        />
        <Baner
          buttons={true}
          videoBg={apiUrl + `/storage/${data.video_url}`}
          videoBg2={apiUrl + `/storage/${data.video_url_m}`}
        />
      </div>
      {/* Слайдер баннеров */}
      <div id="genn-SliderBaner" className="genn-SliderBaner-container">
        <SliderBaner
          images={data.image_slider}
          openModal={openModal}
          openVideoModal={openVideoModal}
        />
      </div>

      {/* Категории */}
      <div id="genn-Categoryes" className="genn-Categoryes">
        <Categoryes categories={data.category} title={data.category_title} />
      </div>

      {/* Кнопки */}
      <div id="genn-TwoButtonV1">
        <TwoButtonV1 />
      </div>

      {/* Видео слайдер */}
      <div id="genn-VideoSlider" className="genn-VideoSlider">
        <VideoSlider />
      </div>

      {/* Блок с изображением */}
      <div id="genn-ImegBox" className="genn-ImegBox">
        <ImegBox
          imgUrl={data.section_img || LocalText.ImegBox.img}
          mobileImgUrl={data.section_img_mobile || LocalText.ImegBox.mobileImg}
        />
      </div>

      {/* Иконки */}
      <div id="genn-IconsBox" className="genn-IconsBox">
        <IconsBox iconsData={data.icons} title={false} />
      </div>

      {/* Видео отзывы */}
      <div id="genn-CommentsModal" className="genn-CommentsModal">
        <CommentsModal reviews={data.video_reviews} />
      </div>

      {/* Кнопки второй секции */}
      <div id="genn-TwoButtonV2" className="genn-TwoButtonV2">
        <TwoButtonV2 />
      </div>

      {/* Модальное окно */}
      {modalIndex !== null && videosData && (
        <CustomModal
          isOpen={modalIndex !== null}
          onClose={closeModal}
          modalImage={videosData[modalIndex].image}
          description={videosData[modalIndex].description}
        />
      )}

      {/* Footer */}
      <footer className="footer">
        <Footer figma={figma} />
      </footer>
    </>
  );
}

export default MainPage;