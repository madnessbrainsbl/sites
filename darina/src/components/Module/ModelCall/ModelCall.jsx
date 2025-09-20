import React, { useEffect, useState, useRef } from "react";
import "./ModelCall.css";
import imageClose from "../../../assets/images/ico/Buttons/closeIco2.svg";
import buttonNext from "../../../assets/images/ico/Buttons/next-2.svg";
import CustomDropUpSelect from "../o/CustomDropUpSelect";
import sunIco from "../../../assets/images/ico/sun.svg";
import cloudIco from "../../../assets/images/ico/cloud1.svg";
import cloudIco2 from "../../../assets/images/ico/cloud3.svg";
import cloudIco3 from "../../../assets/images/ico/cloud4.svg";
import moon from "../../../assets/images/ico/moon.svg";
import star1 from "../../../assets/images/ico/Star1.svg";
import star2 from "../../../assets/images/ico/Star2.svg";
import star3 from "../../../assets/images/ico/Star3.svg";

const useAnimatedPlaceholder = (text, speed = 150, intervalTime = 5000, phone = false) => {
  const [animatedText, setAnimatedText] = useState("");
  const inputRef = useRef(null);

  useEffect(() => {
    let index = 0;
    const fixedPart = phone ? "+7" : "";
    const textToAnimate = text.replace("+7", "");
    let intervalId;

    const animateText = () => {
      // Проверяем, не в фокусе ли инпут
      if (document.activeElement === inputRef.current) {
        return; // Прерываем анимацию, если инпут в фокусе
      }

      index++;
      if (index <= textToAnimate.length) {
        setAnimatedText(fixedPart + textToAnimate.slice(0, index));
      } else {
        index = 0; // Сбрасываем для повторения
        setAnimatedText(fixedPart);
      }
    };

    // Запускаем анимацию с интервалом
    intervalId = setInterval(animateText, speed);

    // Очищаем интервал при размонтировании
    return () => clearInterval(intervalId);
  }, [text, speed, intervalTime, phone]);

  return [animatedText, inputRef];
};

const getDayNameInRussian = () => {
  const daysInRussian = ["Воскресенье", "Понедельник", "Вторник", "Среда", "Четверг", "Пятница", "Суббота"];
  const today = new Date().getDay();
  return daysInRussian[today];
};

const getCurrentTimeRange = () => {
  const now = new Date();
  const hours = now.getHours();
  const minutes = now.getMinutes();

  const timeRanges = ["08:00-10:00", "10:00-12:00", "12:00-14:00", "14:00-16:00", "16:00-18:00", "18:00-20:00"];

  for (let range of timeRanges) {
    const [start, end] = range.split("-").map((time) => {
      const [hh, mm] = time.split(":");
      return parseInt(hh) * 60 + parseInt(mm);
    });
    const nowInMinutes = hours * 60 + minutes;

    if (nowInMinutes >= start && nowInMinutes <= end) {
      return range;
    }
  }
  return timeRanges[0];
};

function ModelCall({ setCloseModelHandler }) {
  const [isNightTime, setIsNightTime] = useState(false);
  const [showTime, setShowTime] = useState(false);
  const [phonePlaceholder, phoneInputRef] = useAnimatedPlaceholder("+7(999)999-99-99", 150, 5000, true);
  const [namePlaceholder, nameInputRef] = useAnimatedPlaceholder("Ваше имя", 250, 5000);
  const [formData, setFormData] = useState({
    callback: { name: "", phone: "" },
    day: getDayNameInRussian(),
    time: getCurrentTimeRange(),
  });
  const [errors, setErrors] = useState({ name: "", phone: "", day: "", time: "" });

  useEffect(() => {
    document.body.style.overflow = "hidden";
    document.body.style.height = "100vh";
    document.body.style.width = "100%";

    return () => {
      document.body.style.overflow = "auto";
      document.body.style.height = "auto";
      document.body.style.width = "auto";
    };
  }, []);

  useEffect(() => {
    const checkNightTime = () => {
      const now = new Date();
      const moscowOffset = 3;
      const currentHour = (now.getUTCHours() + moscowOffset) % 24;
      setIsNightTime(currentHour >= 20 || currentHour < 8);
    };

    checkNightTime();
    const interval = setInterval(checkNightTime, 60000);
    return () => clearInterval(interval);
  }, []);

  const formatPhoneNumber = (value) => {
    const cleaned = value.replace(/\D/g, "");
    const match = cleaned.match(/^(\d{0,1})(\d{0,3})(\d{0,3})(\d{0,2})(\d{0,2})$/);
    if (match) {
      const part1 = match[1] ? "+7" : "";
      const part2 = match[2] ? `(${match[2]}` : "";
      const part3 = match[3] ? `)${match[3]}` : "";
      const part4 = match[4] ? `-${match[4]}` : "";
      const part5 = match[5] ? `-${match[5]}` : "";
      return `${part1}${part2}${part3}${part4}${part5}`;
    }
    return value;
  };

  const handleNameChange = (e) => {
    setFormData((prevData) => ({
      ...prevData,
      callback: { ...prevData.callback, name: e.target.value },
    }));
    setErrors((prevErrors) => ({ ...prevErrors, name: "" }));
  };

  const handlePhoneChange = (e) => {
    const formattedPhone = formatPhoneNumber(e.target.value);
    setFormData((prevData) => ({
      ...prevData,
      callback: { ...prevData.callback, phone: formattedPhone },
    }));
    setErrors((prevErrors) => ({ ...prevErrors, phone: "" }));
  };

  const handleDayChange = (selectedDay) => {
    setFormData((prevData) => ({ ...prevData, day: selectedDay }));
    setErrors((prevErrors) => ({ ...prevErrors, day: "" }));
  };

  const handleTimeChange = (selectedTime) => {
    setFormData((prevData) => ({ ...prevData, time: selectedTime }));
    setErrors((prevErrors) => ({ ...prevErrors, time: "" }));
  };

  const toggleTimeSelection = () => {
    setShowTime(!showTime);
  };

  const handleSubmit = async () => {
    const { callback, day, time } = formData;
    const newErrors = {};

    if (!callback.name.trim()) {
      newErrors.name = "Имя обязательно для заполнения.";
    }

    if (!callback.phone.trim() || callback.phone.length < 16) {
      newErrors.phone = "Введите корректный номер телефона.";
    }

    if (showTime) {
      if (!day) newErrors.day = "Выберите день.";
      if (!time) newErrors.time = "Выберите время.";
    }

    setErrors(newErrors);

    if (Object.keys(newErrors).length === 0) {
      const leadData = {
        sName: callback.name,
        sLastName: callback.lastName || "",
        arPhone: [{ VALUE: callback.phone, VALUE_TYPE: "WORK" }],
        arEmail: callback.email ? [{ VALUE: callback.email, VALUE_TYPE: "WORK" }] : [],
      };

      if (showTime) {
        leadData.COMMENTS = `Предпочитаемый день: ${day}, время: ${time}`;
      }

      const result = await createLead(leadData);

      if (result.success) {
        console.log("Лид успешно создан:", result.result);
        setCloseModelHandler();
      } else {
        console.error("Ошибка создания лида:", result.error);
      }
    }
  };

  const createLead = async ({ sName, sLastName, arPhone, arEmail, COMMENTS }) => {
    const webhookUrl = "https://b24-ckjow2.bitrix24.ru/rest/1/qb6nn0ozefa3jd7j/crm.lead.add.json";

    const leadData = {
      fields: {
        TITLE: `Обратный звонок: ${[sName, sLastName].join(" ")}`,
        NAME: sName,
        LAST_NAME: sLastName,
        PHONE: arPhone,
        EMAIL: arEmail,
        COMMENTS: COMMENTS || "",
      },
      params: { REGISTER_SONET_EVENT: "Y" },
    };

    try {
      const response = await fetch(webhookUrl, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(leadData),
      });

      const result = await response.json();

      if (result.error) {
        console.error("Ошибка Bitrix24:", result.error_description);
        return { success: false, error: result.error_description };
      }

      return { success: true, result };
    } catch (error) {
      console.error("Ошибка отправки данных:", error);
      return { success: false, error: error.message };
    }
  };

  return (
    <div id="ModelCall" className="gemm-ModelWindow overlay" onClick={setCloseModelHandler}>
      <div className="conteniner" onClick={(e) => e.stopPropagation()}>
        <div className="close" onClick={setCloseModelHandler}>
          <img src={imageClose} alt="Close" />
        </div>
        <div className="content">
          <div className={!isNightTime ? "sun" : "sun night"}>
            <img src={!isNightTime ? sunIco : moon} alt="Sun" />
          </div>
          <div className={!isNightTime ? "cloud1" : "cloud1 night"}>
            <img src={!isNightTime ? cloudIco : star1} alt="Cloud1" />
          </div>
          <div className={!isNightTime ? "cloud2" : "cloud2 night"}>
            <img src={!isNightTime ? cloudIco2 : star2} alt="Cloud2" />
          </div>
          <div className={!isNightTime ? "cloud3" : "cloud3 night"}>
            <img src={!isNightTime ? cloudIco3 : star3} alt="Cloud3" />
          </div>

          <div className="genn-ModelCall-title-small">
            {!isNightTime ? (
              <>
                Напишите удобное время для <br />
                бесплатной консультации
              </>
            ) : (
              <>
                Сейчас сотрудники отдыхают.
                <br />
                Напишите удобное время <br />
                для бесплатной консультации
              </>
            )}
          </div>
          <div className="genn-ModelCall-title-main">Обратный звонок</div>

          <div className="genn-ModelCall-inpunts">
            <input
              ref={nameInputRef}
              type="text"
              placeholder={formData.callback.name ? "" : namePlaceholder}
              style={{ fontFamily: "monospace", fontSize: "16px" }}
              value={formData.callback.name}
              onChange={handleNameChange}
            />
            {errors.name && <div className="error-message text-[red]">{errors.name}</div>}

            <input
              ref={phoneInputRef}
              type="text"
              placeholder={formData.callback.phone ? "" : phonePlaceholder}
              value={formData.callback.phone}
              onChange={handlePhoneChange}
              maxLength={16}
            />
            {errors.phone && <div className="error-message text-[red]">{errors.phone}</div>}
          </div>

          <div className="genn-ModelCall-textButtonDay">
            <div className="genn-ModelCall-textButtonDay-text">
              <div className="genn-ModelCall-textButtonDay-text-contain">
                {!showTime ? "Хотите указать удобное время?" : "Удобное время"}
              </div>
              <div
                className={
                  !showTime
                    ? "genn-ModelCall-textButtonDay-button closethrow"
                    : "genn-ModelCall-textButtonDay-button openthrow"
                }
                onClick={toggleTimeSelection}
              >
                <img src={buttonNext} alt="Next" />
              </div>
            </div>

            {showTime && (
              <div className="genn-buttons-select">
                <CustomDropUpSelect
                  options={["Понедельник", "Вторник", "Среда", "Четверг", "Пятница", "Суббота", "Воскресенье"]}
                  value={formData.day}
                  onChange={handleDayChange}
                  placeholder="Выберите день"
                />
                {errors.day && <div className="error-message">{errors.day}</div>}

                <CustomDropUpSelect
                  options={["08:00-10:00", "10:00-12:00", "12:00-14:00", "14:00-16:00", "16:00-18:00", "18:00-20:00"]}
                  value={formData.time}
                  onChange={handleTimeChange}
                  placeholder="Выберите время"
                />
                {errors.time && <div className="error-message">{errors.time}</div>}
              </div>
            )}
          </div>

          <div className="genn-ModelCall-buttonSubmit">
            <button className="genn-Baner-button-v2" onClick={handleSubmit}>
              Отправить
            </button>
          </div>
          <div className="genn-des-right">
            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с
            Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных
            в Согласии на обработку персональных данных.
          </div>
        </div>
      </div>
    </div>
  );
}

export default ModelCall;