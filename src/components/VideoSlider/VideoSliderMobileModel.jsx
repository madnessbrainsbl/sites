import { useState, useRef } from "react";
import { Modal, VisuallyHidden } from "@telegram-apps/telegram-ui";
import { DialogTitle } from "@radix-ui/react-dialog";
import { ModalHeader } from "@telegram-apps/telegram-ui/dist/components/Overlays/Modal/components/ModalHeader/ModalHeader";
import "./VideoSliderMobileModel.css";
import ModelCall from "../Module/ModelCall/ModelCall";
import { ModalClose } from "@telegram-apps/telegram-ui/dist/components/Overlays/Modal/components/ModalClose/ModalClose";

function VideoSliderMobileModel({ isOpen, onClose, modalImage, description }) {
  const [isModalOpen, setIsModalOpen] = useState(false);
  const infoRef = useRef(null); // Ссылка на прокручиваемую область
  const touchStartY = useRef(null);

  const openModal2 = () => {
    setIsModalOpen(true);
  };

  const closeModal2 = () => {
    setIsModalOpen(false);
  };

  const handleTouchStart = (e) => {
    touchStartY.current = e.touches[0].clientY;
  };

  const handleTouchMove = (e) => {
    const touchCurrentY = e.touches[0].clientY;
    const infoElement = infoRef.current;

    if (
      infoElement.scrollTop === 0 &&
      touchCurrentY > touchStartY.current
    ) {
      // Если прокрутка вверху и свайп вниз, отключаем прокрутку
      infoElement.style.overflowY = "hidden";
    }
  };

  const handleTouchEnd = () => {
    const infoElement = infoRef.current;
    infoElement.style.overflowY = "auto"; // Восстанавливаем прокрутку
  };

  return (
    <Modal
     header={
    <ModalHeader >
      Service Details
    </ModalHeader>
  }
  open={isOpen}
  onOpenChange={(open) => onClose(open)}
  dismissible={true} // Полностью отключаем свайп
  style={{
    backgroundColor: "transparent",
    bottom: "0",
    display: "flex",
    flexDirection: "column",
    minHeight: "100%",
  }}
    >
      <DialogTitle>
        <VisuallyHidden>{""}</VisuallyHidden>
      </DialogTitle>
      <div
        className="genn-VideoSliderMobileModel bg-[#fff]"
        style={{ flex: 1, display: "flex", flexDirection: "column" }}
      >
        <div
          className="genn-VideoSliderMobileModel-img"
          style={{ background: `url(${modalImage})`, flexShrink: 0 }}
        ></div>
       
        <div
          ref={infoRef}
          className="genn-VideoSliderMobileModel-info"
          style={{ flex: 1, overflowY: "auto" }}
          onTouchStart={handleTouchStart}
          onTouchMove={handleTouchMove}
          onTouchEnd={handleTouchEnd}
        > <ModalClose onClick={() => onClose(false)} />
          <p
            className="genn-VideoSliderMobileModel-p"
            dangerouslySetInnerHTML={{ __html: description }}
          ></p>
        </div>
        <div className="genn-button-container" style={{ flexShrink: 0 }}>
          <button className="genn-button-gradient" onClick={openModal2}>
            Заказать выезд замерщика ы
          </button>
        </div>
      </div>
      {isModalOpen && <ModelCall setCloseModelHandler={closeModal2} />}
    </Modal>
  );
}

export default VideoSliderMobileModel; 