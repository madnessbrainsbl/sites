import { useState, useRef, useEffect } from "react";
import "./CustomModal.css";
import ModelCall from "../ModelCall/ModelCall";
import { useModal } from "../../ModalContext";

function CustomModal({ isOpen, onClose, modalImage, description }) {
  const { openSecondModal, isSecondModalOpen, closeSecondModal } = useModal();
  const [modalPosition, setModalPosition] = useState(0);
  const modalRef = useRef(null);
  const contentRef = useRef(null);
  const touchStartY = useRef(null);
  const touchLastY = useRef(null);
  const isDragging = useRef(false);

  const closeModal = () => {
    setModalPosition(window.innerHeight);
    setTimeout(() => onClose(false), 300);
  };

  // Добавляем обработчик с логом
  const handleOpenSecondModal = () => {
    console.log("handleOpenSecondModal: Attempting to open second modal");
    openSecondModal();
  };

  const handleTouchStart = (e) => {
    touchStartY.current = e.touches[0].clientY;
    touchLastY.current = touchStartY.current;
    isDragging.current = false;
  };

  const handleTouchMove = (e) => {
    const touchCurrentY = e.touches[0].clientY;
    const deltaY = touchCurrentY - touchStartY.current;
    const contentElement = contentRef.current;

    if (contentElement.scrollTop === 0 && deltaY > 0) {
      e.preventDefault();
      isDragging.current = true;
      setModalPosition(deltaY);
    } else if (isDragging.current) {
      e.preventDefault();
      setModalPosition(Math.max(deltaY, 0));
    }
  };

  const handleTouchEnd = () => {
    if (isDragging.current) {
      const threshold = window.innerHeight * 0.3;
      if (modalPosition > threshold) {
        closeModal();
      } else {
        setModalPosition(0);
      }
    }
    isDragging.current = false;
  };

  useEffect(() => {
    console.log("isSecondModalOpen:", isSecondModalOpen);
    if (isOpen) {
      document.body.style.overflow = "hidden";
      setModalPosition(0);
    } else {
      document.body.style.overflow = "auto";
    }
    return () => {
      document.body.style.overflow = "auto";
    };
  }, [isOpen, isSecondModalOpen]);

  if (!isOpen) return null;

  return (
    <>
      <div className="custom-modal-overlay" onClick={closeModal}></div>
      <div
        ref={modalRef}
        className="custom-modal"
        style={{ transform: `translateY(${modalPosition}px)` }}
        onTouchStart={handleTouchStart}
        onTouchMove={handleTouchMove}
        onTouchEnd={handleTouchEnd}
      >
        <div className="custom-modal-content">
          <div
            className="custom-modal-image"
            style={{ backgroundImage: `url(${modalImage})` }}
          ></div>
          <div ref={contentRef} className="custom-modal-info">
            <p dangerouslySetInnerHTML={{ __html: description }}></p>
          </div>
          
          <div className="genn-button-container" style={{ flexShrink: 0 , margintop: 5 }}>
            <button className="genn-button-gradient" onClick={handleOpenSecondModal}>
              Заказать выезд замерщикаы
            </button>
          </div>
        </div>
      </div>

      {isSecondModalOpen && (
        <>
          {console.log("Rendering ModelCall in CustomModal")}
          <ModelCall setCloseModelHandler={closeSecondModal} />
        </>
      )}
    </>
  );
}

export default CustomModal;