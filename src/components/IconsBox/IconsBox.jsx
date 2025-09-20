import React, { useEffect, useState } from "react";
import axios from "axios";
import "./IconsBox.css";
import { LocalText } from "../LocalText/LocalText";
import { apiUrl } from "../../config";

function IconsBox({ iconsData, title = true }) {
  const [icons, setIcons] = useState([]);

  // useEffect(() => {
  //   // Проверяем, пришли ли данные и являются ли они строкой
  //   if (iconsData) {
  //     try {
  //       const parsedIcons = typeof iconsData === "string" ? JSON.parse(iconsData) : iconsData;
  //       setIcons(parsedIcons);
  //     } catch (error) {
  //       console.error("Error parsing iconsData:", error);
  //       setIcons([]); // Устанавливаем пустой массив в случае ошибки
  //     }
  //   }
  // }, [iconsData]);


const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    axios
      .get(apiUrl + "/api/reviews")
      .then((response) => {
        if (response.data.success) {
          setData(response.data.data[0]);
        }
        console.error("Error fetching data:", response);
        setLoading(false);
      })
      .catch((error) => {
        console.error("Error fetching data:", error);
        setLoading(false);
      });
  }, []);

  if (loading) {
    {""}
  }

  if (!data) {
    return <div>Error loading data</div>;
  }

console.log('data ' + data);
 
  return (
    <>
     <h3 className="genn-adm-title-icons">{title ? 'Заказать мебель стало проще' : ''}</h3>
    <div className="genn-IconsBox-containerCard genn-fl-row">
       
      {data.icons.length > 0 ? (
        data.icons.map((icon, index) => (
          <div className={`anigenn genn-IconsBox-Card card${index + 1}`} key={index}>
            <img src={icon.image} alt={icon.title || LocalText.IconsBox.titleDefault} />
            <h4>{icon.title || LocalText.IconsBox.titleDefault}</h4>
            {icon.url && (
              <button
                className="genn-IconsBox-Card"
                onClick={() => window.open(icon.url, "_blank")}
              >
                {LocalText.IconsBox.button}
              </button>
            )}
          </div>
        ))
      ) : (
        <div>{LocalText.IconsBox.noData || "Нет данных для отображения"}</div>
      )}
    </div>
    </>
  );
}

export default IconsBox;
