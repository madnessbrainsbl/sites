import React, { useEffect, useState } from "react";
import "./MultiStepForm.css";
import kitchenico from "../../../assets/images/ico/menu/kuhna-1-b.svg";
import kitchenicoW from "../../../assets/images/ico/menu/kuhna-2-w.svg";
import shkadico from "../../../assets/images/ico/menu/skaf-2-b.svg";
import shkaficow from "../../../assets/images/ico/menu/skaf-1-w.svg";
import prihozaia from "../../../assets/images/ico/menu/prihozaia-1-b.svg";
import prihozaiaw from "../../../assets/images/ico/menu/prihozaia-2-w.svg";
import zona from "../../../assets/images/ico/menu/r-zona-1-b.svg";
import zonaw from "../../../assets/images/ico/menu/r-zona-2-w.svg";
import nextb from "../../../assets/images/ico/Buttons/next-1.svg";
import nextw from "../../../assets/images/ico/Buttons/next-2.svg";
import close from "../../../assets/images/ico/Buttons/closeIco2.svg";
import InputMask from "react-input-mask";
import axios from "axios";

const MultiStepForm = ({ isModalOpen, closeModal }) => {
  const [currentStep, setCurrentStep] = useState(1);
  const [formData, setFormData] = useState({
    product: [],
    layout: "",
    dimensions: { width: "", file: null },
    materials: { material: "" },
    callback: { name: "", phone: "" },
  });
  const [error, setError] = useState("");

  // Блокировка прокрутки при открытии модального окна
  useEffect(() => {
    if (isModalOpen) {
      document.body.style.overflow = "hidden";
      document.body.style.height = "100vh";
      document.body.style.width = "100%";
    }

    // Восстановление прокрутки при закрытии
    return () => {
      document.body.style.overflow = "auto";
      document.body.style.height = "auto";
      document.body.style.width = "auto";
    };
  }, [isModalOpen]);

  const useAnimatedPlaceholder = (text, speed = 100, intervalTime = 5000, phone = false) => {
    const [animatedText, setAnimatedText] = useState("");

    useEffect(() => {
      let index = 0;
      const fixedPart = phone ? "+7" : "";
      const textToAnimate = text.replace("+7", "");

      const animateText = () => {
        setAnimatedText(fixedPart);
        index = 0;

        const interval = setInterval(() => {
          if (index < textToAnimate.length) {
            setAnimatedText(fixedPart + textToAnimate.slice(0, index + 1));
            index++;
          } else {
            clearInterval(interval);
          }
        }, speed);
      };

      animateText();
      const repeatInterval = setInterval(animateText, intervalTime);

      return () => {
        clearInterval(repeatInterval);
      };
    }, [text, speed, intervalTime, phone]);

    return animatedText;
  };

  const handlePhoneChange = (value) => {
    clearError();
    setFormData({
      ...formData,
      callback: { ...formData.callback, phone: value },
    });
  };

  const clearError = () => {
    if (error) {
      setError("");
    }
  };

  const nextStep = () => {
    if (validateStep()) {
      setCurrentStep((prev) => prev + 1);
      setError("");
    }
  };

  const prevStep = () => {
    setCurrentStep((prev) => prev - 1);
    setError("");
  };

  const updateFormData = (field, value) => {
    clearError();
    setFormData((prev) => ({
      ...prev,
      ...field,
    }));
  };

  const handleFileChange = (e) => {
    const file = e.target.files[0];
    if (file) {
      // Проверка размера файла (например, не более 10 МБ)
      if (file.size > 10 * 1024 * 1024) {
        setError("Файл слишком большой. Максимальный размер: 10 МБ.");
        return;
      }
      // Проверка типа файла (например, только изображения и PDF)
      const allowedTypes = ["image/jpeg", "image/png", "application/pdf"];
      if (!allowedTypes.includes(file.type)) {
        setError("Недопустимый формат файла. Используйте JPEG, PNG или PDF.");
        return;
      }
      setFormData((prevState) => ({
        ...prevState,
        dimensions: { ...prevState.dimensions, file },
      }));
    }
  };

  const validateStep = () => {
    let errorMessage = "";

    switch (currentStep) {
      case 1:
        if (formData.product.length === 0) {
          errorMessage = "Пожалуйста, выберите хотя бы одно изделие.";
        }
        break;
      case 2:
        if (!formData.dimensions.width && !formData.dimensions.file) {
          errorMessage = "Пожалуйста, укажите размеры или загрузите файл.";
        }
        break;
      case 3:
        if (!formData.materials.material) {
          errorMessage = "Пожалуйста, укажите материалы.";
        }
        break;
      case 4:
        if (!formData.callback.phone) {
          errorMessage = "Пожалуйста, укажите ваш номер телефона.";
        }
        break;
      default:
        errorMessage = "";
    }

    if (errorMessage) {
      setError(errorMessage);
      return false;
    }

    return true;
  };

  const sendToBitrix24 = async (data) => {
    const webhookUrl = "https://b24-ckjow2.bitrix24.ru/rest/1/qb6nn0ozefa3jd7j/crm.lead.add.json";

    const leadData = new FormData();
    leadData.append("fields[TITLE]", `Рассчет Продукт: ${data.product.join(", ")} - ${data.callback.name}`);
    leadData.append("fields[NAME]", data.callback.name);
    leadData.append("fields[PHONE][0][VALUE]", data.callback.phone);
    leadData.append("fields[PHONE][0][VALUE_TYPE]", "WORK");
    leadData.append(
      "fields[COMMENTS]",
      `Продукт: ${data.product.join(", ")}; Размеры: ${data.dimensions.width || "не указаны"}; Материалы: ${data.materials.material || "не указаны"}`
    );

    if (data.dimensions.file) {
      leadData.append("fields[UF_CRM_1698765432]", data.dimensions.file); // Поле для файла в Bitrix24
    }

    try {
      const response = await axios.post(webhookUrl, leadData, {
        headers: { "Content-Type": "multipart/form-data" },
      });

      if (response.status === 200 && response.data.result) {
        console.log("Лид успешно создан в Bitrix24:", response.data.result);
        return { success: true };
      } else {
        throw new Error("Ошибка создания лида в Bitrix24");
      }
    } catch (error) {
      console.error("Ошибка отправки в Bitrix24:", error.message);
      return { success: false, error: error.message };
    }
  };

  const handleSubmit = async () => {
    if (validateStep()) {
      try {
        console.log("Отправляемые данные:", formData);

        const result = await sendToBitrix24(formData);

        if (result.success) {
          console.log("Заявка успешно отправлена в Bitrix24");
          closeModal();
          setFormData({
            product: [],
            layout: "",
            dimensions: { width: "", file: null },
            materials: { material: "" },
            callback: { name: "", phone: "" },
          });
          setCurrentStep(1);
        } else {
          setError(result.error || "Не удалось отправить заявку.");
        }
      } catch (error) {
        console.error("Ошибка отправки формы:", error);
        setError("Ошибка отправки формы.");
      }
    }
  };

  const dlina = useAnimatedPlaceholder("Длина, ширина, высота", 100, 5000);
  const material = useAnimatedPlaceholder("Введите материалы", 100, 5000);
  const name = useAnimatedPlaceholder("Ваше имя", 100, 5000);
  const phone = useAnimatedPlaceholder("+7(999)999-99-99", 100, 5000, true);

  const renderStep = () => {
    switch (currentStep) {
      case 1:
        return (
          <div className="ModelWindow-1-step1 text-[#000]">
            <h2 className="ModelWindow-1">Какое изделие вы<br />хотите заказать?</h2>
            <div className="ModelWindow-4">
              {["Кухня", "Шкаф", "Гардеробная", "Рабочая зона", "Другое"].map((product) => (
                <div
                  key={product}
                  className={`product-option ${formData.product.includes(product) ? "selected" : ""}`}
                  onClick={() => handleProductSelection(product)}
                >
                  <div>
                    <img
                      src={
                        formData.product.includes(product)
                          ? getImageForProduct(product, true)
                          : getImageForProduct(product, false)
                      }
                      alt={product}
                    />
                  </div>
                  <div className="product-option-text">{product}</div>
                </div>
              ))}
            </div>
          </div>
        );
      case 2:
        return (
          <div>
            <h2 className="ModelWindow-1">Есть ли размеры?</h2>
            <textarea
              placeholder={dlina}
              className="text-[#000]"
              value={formData.dimensions.width}
              onFocus={clearError}
              onChange={(e) =>
                updateFormData({
                  dimensions: { ...formData.dimensions, width: e.target.value },
                })
              }
            />
            <div className="mt-4">
              <label className="block text-[#000] mb-2">Загрузите файл (JPEG, PNG, PDF):</label>
              <input
            
                type="file"
                accept="image/jpeg,image/png,application/pdf"
                onChange={handleFileChange}
                className="text-[#000] file-send"
              />
             
            </div>
            <div
              className={`product-option ${formData.dimensions.width === "Требуется замер" ? "selected" : ""}`}
              onClick={() => {
                clearError();
                setFormData((prevState) => ({
                  ...prevState,
                  dimensions: {
                    ...prevState.dimensions,
                    width:
                      prevState.dimensions.width === "Требуется замер"
                        ? ""
                        : "Требуется замер",
                  },
                }));
              }}
            >
              <div className="product-option-text">Требуется замер</div>
            </div>
          </div>
        );
      case 3:
        return (
          <div>
            <h2 className="ModelWindow-1">Из каких материалов?</h2>
            <textarea
              placeholder={material}
              className="text-[#000]"
              value={formData.materials.material}
              onFocus={clearError}
              onChange={(e) =>
                updateFormData({
                  materials: {
                    ...formData.materials,
                    material: e.target.value,
                  },
                })
              }
            />
            <div
              className={`product-option ${formData.materials.material === "Требуется замер" ? "selected" : ""}`}
              onClick={() => {
                clearError();
                setFormData((prevState) => ({
                  ...prevState,
                  materials: {
                    ...prevState.materials,
                    material:
                      prevState.materials.material === "Требуется замер"
                        ? ""
                        : "Требуется замер",
                  },
                }));
              }}
            >
              <div className="product-option-text">Требуется замер</div>
            </div>
          </div>
        );
      case 4:
        return (
          <div className="ModelWindow-1-con">
            <h2 className="ModelWindow-1">Ваши данные для связи</h2>
            <input
              type="text"
              className="text-[#000]"
              placeholder={name}
              style={{ fontFamily: "monospace", fontSize: "16px" }}
              value={formData.callback.name}
              onFocus={clearError}
              onChange={(e) =>
                updateFormData({
                  callback: { ...formData.callback, name: e.target.value },
                })
              }
            />
            <InputMask
              mask="+7(999)999-99-99"
              className="[#000]"
              value={formData.callback.phone}
              onFocus={clearError}
              onChange={(e) => handlePhoneChange(e.target.value)}
              maskChar="_"
            >
              {(inputProps) => (
                <input
                  {...inputProps}
                  type="text"
                  placeholder={phone}
                  value={formData.callback.phone}
                />
              )}
            </InputMask>
            <div className="ModelWindow-6-button-container">
              <button className="ModelWindow-6" onClick={handleSubmit}>
                Узнать стоимость
              </button>
            </div>
          </div>
        );
      default:
        return <h2 className="ModelWindow-1">Форма завершена! Спасибо!</h2>;
    }
  };

  const getImageForProduct = (product, selected) => {
    switch (product) {
      case "Кухня":
        return selected ? kitchenicoW : kitchenico;
      case "Шкаф":
        return selected ? shkaficow : shkadico;
      case "Гардеробная":
        return selected ? prihozaiaw : prihozaia;
      case "Рабочая зона":
        return selected ? zonaw : zona;
      case "Другое":
        return selected ? kitchenicoW : kitchenico;
      default:
        return kitchenico;
    }
  };

  const handleProductSelection = (product) => {
    clearError();
    const isSelected = formData.product.includes(product);
    if (isSelected) {
      setFormData((prev) => ({
        ...prev,
        product: prev.product.filter((item) => item !== product),
      }));
    } else {
      setFormData((prev) => ({
        ...prev,
        product: [...prev.product, product],
      }));
    }
  };

  const progressWidth = (currentStep - 1) * 33.33;

  return (
    isModalOpen && (
      <div id="ModelWindow" className="overlay multform">
        <div className="conteniner gemm-ModelWindow">
          <button className="close" onClick={closeModal}>
            <img src={close} alt="close" />
          </button>
          <div className="step-content">{renderStep()}</div>
          {error && <p className="error-message">{error}</p>}
          <div className="ModelWindow-44">
            <div className="progress-bar-container">
              <div
                className="progress-tape"
                style={{ width: `${progressWidth}%` }}
              ></div>
            </div>
            <div className="ModelWindow-44-buttonContainer">
              <button
                className="ModelWindow-button-5"
                onClick={currentStep !== 1 ? prevStep : () => {}}
              >
                <img src={nextw} />
              </button>
              <button
                className="ModelWindow-button-6"
                onClick={currentStep !== 4 ? nextStep : () => {}}
                disabled={!!error}
              >
                <img src={nextb} />
              </button>
            </div>
          </div>
        </div>
      </div>
    )
  );
};

export default MultiStepForm;