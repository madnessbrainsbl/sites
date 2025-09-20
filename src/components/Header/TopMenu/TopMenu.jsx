import { Link } from "react-router";
import { LocalText } from "../../LocalText/LocalText";

function TopMenu({ openVideoModal }) {
  return (
    <ul className="genn-fl-row genn-Header-menu">
      <li className="genn-Header-1-menu">
        <a href="#genn-CommentsModal">Отзывы
        </a>
      </li>
      <li className="genn-Header-1-menu">
      <a href="./?slide=0"  onClick={ (e) => {              
                    e.preventDefault();                     
                    openVideoModal(2);
                  }}>Процесс заказа </a>
        </li> 
      <li className="genn-Header-1-menu">
      <a href="./?slide=4"  onClick={ (e) => {              
                    e.preventDefault();                     
                    openVideoModal(4);
                  }}>Материалы</a>
      </li>
      <li className="genn-Header-1-menu">
      <a href="#" onClick={ (e) => {              
                    e.preventDefault();                     
                    openVideoModal(3);
                  }}>О фабрике</a>
        </li>
      <li className="genn-Header-1-menu">
        <Link to="/kontakty">
         Контакты
        </Link>
      </li>
    </ul>
  );
}
export default TopMenu;
