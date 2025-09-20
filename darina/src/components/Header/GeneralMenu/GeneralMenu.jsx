import { NavLink, useLocation } from "react-router-dom";
import { LocalText } from "../../LocalText/LocalText";
import { useState } from "react";
import ModelWindow from "../../Module/ModelWindow/ModelWindow";
import PropTypes from "prop-types";

function GeneralMenu({
  menu1,
  menu11,
  menu6,
  menu5,
  menu8,
  activeMenu1,
  activeMenu11,
  activeMenu6,
  activeMenu5,
  activeMenu8,
  openCallModal,
}) {
  const [openModel, setOpenModel] = useState(false);
  const location = useLocation();

  const setOpenModelHandler = () => {
    setOpenModel(true);
    document.body.style.overflow = "hidden";
  };

  const setCloseModelHandler = () => {
    setOpenModel(false);
    document.body.style.overflow = "";
  };

  const isActiveMenu = (path) => location.pathname === path;

  return (
    <>
      <div className="genn-fl-row genn-Header-2-block">
        <NavLink
          to="./kitchen"
          className={({ isActive }) =>
            isActive
              ? "genn-Header-2-block-menu active"
              : "genn-Header-2-block-menu"
          }
        >
          <img
            src={isActiveMenu("/kitchen") ? activeMenu1 : menu1}
            alt={LocalText.Header.MenuIco.mi1}
          />
          <div className="genn-Header-2-block-menu-text">
            {LocalText.Header.MenuIco.mi1}
          </div>
        </NavLink>

        <NavLink
          to="./shkaf"
          className={({ isActive }) =>
            isActive
              ? "genn-Header-2-block-menu active"
              : "genn-Header-2-block-menu"
          }
        >
          <img
            src={isActiveMenu("/shkaf") ? activeMenu11 : menu11}
            alt={LocalText.Header.MenuIco.mi2}
          />
          <div className="genn-Header-2-block-menu-text">
            {LocalText.Header.MenuIco.mi2}
          </div>
        </NavLink>

        <NavLink
          to="./prikhozhie"
          className={({ isActive }) =>
            isActive
              ? "genn-Header-2-block-menu active"
              : "genn-Header-2-block-menu"
          }
        >
          <img
            src={isActiveMenu("/prikhozhie") ? activeMenu5 : menu6}
            alt={LocalText.Header.MenuIco.mi3}
          />
          <div className="genn-Header-2-block-menu-text">
            {LocalText.Header.MenuIco.mi3}
          </div>
        </NavLink>

        <NavLink
          to="./garderobnye"
          className={({ isActive }) =>
            isActive
              ? "genn-Header-2-block-menu active"
              : "genn-Header-2-block-menu"
          }
        >
          <img
            src={isActiveMenu("/garderobnye") ? menu5 : activeMenu6}
            alt={LocalText.Header.MenuIco.mi4}
          />
          <div className="genn-Header-2-block-menu-text">
            {LocalText.Header.MenuIco.mi4}
          </div>
        </NavLink>

        <div className="genn-Header-2-block-menu" onClick={setOpenModelHandler}>
          <img src={menu8} alt={LocalText.Header.MenuIco.mi5} />
          <div className="genn-Header-2-block-menu-text">
            {LocalText.Header.MenuIco.mi5}
          </div>
        </div>
      </div>

      {openModel && (
        <ModelWindow
          setCloseModelHandler={setCloseModelHandler}
          menu8={menu8}
          openModal={openCallModal}
        />
      )}
    </>
  );
}

GeneralMenu.propTypes = {
  menu1: PropTypes.string.isRequired,
  menu11: PropTypes.string.isRequired,
  menu6: PropTypes.string.isRequired,
  menu5: PropTypes.string.isRequired,
  menu8: PropTypes.string.isRequired,
  activeMenu1: PropTypes.string.isRequired,
  activeMenu11: PropTypes.string.isRequired,
  activeMenu6: PropTypes.string.isRequired,
  activeMenu5: PropTypes.string.isRequired,
  activeMenu8: PropTypes.string.isRequired,
  openCallModal: PropTypes.func.isRequired,
};

export default GeneralMenu;