import React from "react";
import "./TitleModel.css";
export function TitleModel({description}) {
  return (
    <div className="genn-TitleModel">
      
      <div className="genn-TitleModel-p" dangerouslySetInnerHTML={{ __html: description }}>
        
      </div>
      <div className="genn-button-container">
        <button className="genn-button-gradient">Заказать выезд замерщика 2</button>
      </div>
    </div>
  );
}
