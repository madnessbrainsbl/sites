import axios from "axios";
import { useEffect, useState } from "react";
import contact from "../../assets/images/bg-image/contact.jpg";
import placeholderImage from "../../assets/react.svg";
import { apiUrl } from "../../config";
import Baner from "../Baner/Baner";
import CommentsModal from "../CommentsModal/CommentsModal";
import IconsBox from "../IconsBox/IconsBox";
import placeholder from "../../assets/images/bg-image/BanerBgsmall.png";
import "./Kontakty.css";
import FooterW from "../Footer/FooterW";
import LoadingComponent from "../Module/LoadingComponent/LoadingComponent";
import { Helmet } from "react-helmet";
function Kontakty({openModal}) {
  const [data, setData] = useState(null);
  
  const [loading, setLoading] = useState(true);
  const getData = async () => {
    const placeHolderData = {
      reviews: [
        {
          title: "place holder",
          video: "https://l.okdeal.ru/video/SliderVideo4.mp4",
          image: placeholder,
        },
        {
          title: "place holder",
          video: "https://l.okdeal.ru/video/SliderVideo4.mp4",
          image: placeholder,
        },
        {
          title: "place holder",
          video: "https://l.okdeal.ru/video/SliderVideo4.mp4",
          image: placeholder,
        },
        {
          title: "place holder",
          video: "https://l.okdeal.ru/video/SliderVideo4.mp4",
          image: placeholder,
        },
        {
          title: "place holder",
          video: "https://l.okdeal.ru/video/SliderVideo4.mp4",
          image: placeholder,
        },
        {
          title: "place holder",
          video: "https://l.okdeal.ru/video/SliderVideo4.mp4",
          image: placeholder,
        },
        {
          title: "place holder",
          video: "https://l.okdeal.ru/video/SliderVideo4.mp4",
          image: placeholder,
        },
        {
          title: "place holder",
          video: "https://l.okdeal.ru/video/SliderVideo4.mp4",
          image: placeholder,
        },
        {
          title: "place holder",
          video: "https://l.okdeal.ru/video/SliderVideo4.mp4",
          image: placeholder,
        },
        {
          title: "place holder",
          video: "https://l.okdeal.ru/video/SliderVideo4.mp4",
          image: placeholder,
        },
        {
          title: "place holder",
          video: "https://l.okdeal.ru/video/SliderVideo4.mp4",
          image: placeholder,
        },
      ],
      iconsData: [
        {
          title: "place holder",
          url: "/",
          image: placeholderImage,
        },
        {
          title: "place holder",
          url: "/",
          image: placeholderImage,
        },
        {
          title: "place holder",
          url: "/",
          image: placeholderImage,
        },
        {
          title: "place holder",
          url: "/",
          image: placeholderImage,
        },
        {
          title: "place holder",
          image: placeholderImage,
        },
        {
          title: "place holder",
          image: placeholderImage,
        },
        {
          title: "place holder",
          image: placeholderImage,
        },
        {
          title: "place holder",
          image: placeholderImage,
        },
      ],
    };
    await axios
      .get(apiUrl + "/api/kontakty")
      .then((response) => {
        if (response.data.success && response.data.data.length > 0) {
          setData(response.data.data[0]);
        } else {
          setData(placeHolderData);
          console.error("Unexpected API response structure", response.data);
        }
        setLoading(false);
      })
      .catch((error) => {
        console.error("Error fetching data:", error);
        setData(placeHolderData);
        setLoading(false);
      });
  };
  useEffect(() => {
    getData();
  }, []);

  if (loading) {
    return <LoadingComponent />;
  }

  if (!data) {
    return <div className="text-zinc-800">{JSON.stringify(data, null, 2)}</div>;
  }

  return (
    <>
      <Helmet>
            <title>{data.title}</title> 
            <meta name="description" content={data.description} />
        </Helmet> 
    <div id="contact" className="bg-[#EEECEA]  text-gray-800 overflow-hidden">
      <div className="bg-white flex flex-col justify-end h-[937px] md:h-[1047px] relative">
        <div className="contact-map absolute top-0 md:w-full aspect-[1353/962.12]  min-h-[627px]  ">
        {/* <span className="city-map">Краснодар</span>
        <span className="city-map">Москва</span>
        <span className="city-map">Санкт - Петербург</span> */}
          <img
            className=" absolute inset-0   md:left-0  object-cover "
            src={contact}
            alt="background"
          />
        </div>
        <div className="    w-full     z-10 relative text-gray-800 ">
          <div className="  py-8 max-xl:mx-auto xl:ml-40   md:mb-[85px] md:max-w-[700px]  container flex flex-col md:justify-between    md:flex-row-reverse px-8">
            <div className="flex flex-col gap-8">
              {data.contacts.map((item, index) => (
                <div className="flex gap-4 items-center anigenn">
                <i className={item.url== "whatsapp"? 'fa-brands fa-whatsapp  text-[24px] text-green-500':"fa-solid" + " text-[24px]  fa-" + item.url}></i>
                <div className="text-base font-semibold">{item.title}</div>
              </div>
              ))}
              
            </div>

            <div className="flex flex-col max-w-[30ch] md:max-w-[40ch]  gap-4 mt-6">
              {data.address.map((item, index) => (
                <div key={index} className="flex gap-4 items-start anigenn">
                  <i className="fa-solid shrink-0 fa-location-dot text-[24px]"></i>
                  <div className="text-base font-normal">{item.title}</div>
                </div>
              ))}
              
            </div>
          </div>
        </div>
      </div>

      <div className="relative flex flex-col xl:flex-row  ">
        <div className=" xl:hidden py-8  text-lg  w-full font-semibold text-center ">
        {data.title}
        </div> 
        <Baner
          videoBg="https://l.okdeal.ru/video/SliderVideo4.mp4"
          videoBg2="https://l.okdeal.ru/video/SliderVideo4.mp4"
          className="  w-full relative md:!h-[809px]  max-h-[1099px]  xl:w-1/2 "
        />
        <div className="  max-xl:min-h-[927px] max-xl:pt-8  *:flex-1 flex flex-col  xl:w-1/2 gap-8    bg-[#EEECEA]">
          <section className="flex  xl:border-b-2 xl:border-black/10 max-xl:px-4  flex-col items-center xl:max-w-[453px] max-w-[56ch] mx-auto  max-xl:mx-auto xl:items-start  ">
            <div className="py-4  hidden xl:flex xl:text-start   text-lg  w-full font-bold text-center anigenn">
            {data.title}
            </div>
            <h3 className="text-lg font-semibold anigenn"> {data.title_2}</h3>
            <p className="text-center xl:text-start mt-4 anigenn">
            {data.description}
            </p>
            <button onClick={openModal} className="bg-black text-white rounded-full px-8 py-2 mt-6 anigenn">
              Записаться
            </button>
          </section>

          <section className=" text-center xl:text-start xl:max-w-[453px] max-xl:px-4 max-w-[56ch] mx-auto  max-xl:mx-auto   ">
            <h2 className=" text-xl font-bold mb-6 anigenn">{data.title_3}</h2>
            <p className=" mb-4 font-semibold anigenn">
            {data.description_2}
            </p>
          </section>
          
          <section className="text-center   flex items-center  justify-center  max-xl:px-4  bg-white   w-full ">
            <div>
              <h2 className="text-gray-600 text-xl mb-2 anigenn">{data.title_4}</h2>
              <h1
                className="text-4xl md:text-5xl  bg-gradient-to-r  from-[#56D188] to-[#00726B] lg:text-6xl font-bold anigenn"
                style={{ color: "transparent", backgroundClip: "text" }}
              >
                {data.title_5}
              </h1>
            </div>
          </section>
        </div>
      </div>
      <div className="genn-contact-IconBox white">
        <div id="genn-IconsBox" className="genn-IconsBox ">
          <IconsBox iconsData={data.icons} />
        </div>
      </div>
      <div className="genn-kontakt-contact-Model"> 
        <CommentsModal reviews={data.video_reviews} isWhite={false}/>
      </div>
      <footer className="Shkaffooter">
        <FooterW />
      </footer>
    </div>
 </> );
}
export default Kontakty;
