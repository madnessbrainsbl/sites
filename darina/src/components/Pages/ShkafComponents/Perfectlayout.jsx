

import Baner from "../../Baner/Baner";
import "./Perfectlayout.css";
function Perfectlayout({title,video,titleTextComponent,desTextComponent}) {
  return (
    <>
      <div className="genn-Perfectlayou-title anigenn">
        <div>{title}</div>
      </div>
      <div className="genn-Baner-container">
        <Baner videoBg={video} videoBg2={video} />
      </div>
      <div className="genn-Perfectlayou-bottom">
        <div className="genn-Perfectlayou-bottom-title anigenn">
          {titleTextComponent}
        </div>
        <div className="genn-Perfectlayou-bottom-des anigenn" dangerouslySetInnerHTML={ {__html : desTextComponent}}>
          
        </div>
      </div>
    </>
  );
}
export default Perfectlayout;
