import "./ModelWindow.css";
import PropTypes from "prop-types";
import image from "../../../assets/images/ico/menu/r-zona-1-b.svg";

function ModelWindow(props) {

  const { setCloseModelHandler, menu8, openModal } = props;


  const handleOpenModal = () => {
    if (typeof openModal === "function") {
    
      openModal();
    } else {   console.error("openModal is not a function");
      alert("Функция заказа звонка временно недоступна");
    }
  };

  return (
    <div
      id="ModelWindow"
      className="gemm-ModelWindow overlay"
      onClick={setCloseModelHandler}
    >
      <div className="conteniner" onClick={(e) => e.stopPropagation()}>
        <button className="close" onClick={setCloseModelHandler}>
          ×
        </button>
        <div className="content">
          <h3 className="ModelWindow-1">
            Рабочие зоны доступны <br /> для заказа
          </h3>
          <div className="ModelWindow-2">
            Страница в процессе разработки, <br /> следите за обновлениями сайта.
          </div>
          <div className="ModelWindow-3">
            <img src={menu8} alt="Рабочие зоны" />
          </div>
          <div className="ModelWindow-4">
            <button className="ModelWindow-5" onClick={setCloseModelHandler}>
              Делайте быстрее
            </button>
            <button className="ModelWindow-6" onClick={handleOpenModal}>
              Заказать звонок
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}

ModelWindow.propTypes = {
  setCloseModelHandler: PropTypes.func.isRequired,
  menu8: PropTypes.string.isRequired,
  openModal: PropTypes.func.isRequired,
};

export default ModelWindow;