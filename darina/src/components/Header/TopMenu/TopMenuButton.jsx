import { useState } from "react";
import { Link } from "react-router";
import { LocalText } from "../../LocalText/LocalText";
import MobileMenuIco from "../MobileMenu/MobileMenuIco";
import ModelCall from "../../Module/ModelCall/ModelCall";

function TopMenuButton({ toggleSidebar, closeClass, isSidebarOpen ,openVideoModal}) {


   const [isModalOpen, setIsModalOpen] = useState(false);
   const openModal = () => {
    setIsModalOpen(true); // Open modal when button is clicked
  };

  const closeModal = () => {
    setIsModalOpen(false); // Close modal
  };
  return (
  <> 
    <div className="genn-Header-1-ButtonAndMenu">
      <div className="genn-Header-1-Button">
        <button className="genn-Baner-button-v3" onClick={openModal}>
          {LocalText.Header.MenuButton}
        </button>
      </div>
      <MobileMenuIco
        toggleSidebar={toggleSidebar}
        closeClass={closeClass}
        isSidebarOpen={isSidebarOpen}
      />
    </div>
    {isModalOpen && <ModelCall setCloseModelHandler={closeModal} />}
    </>
  );
}
export default TopMenuButton;
