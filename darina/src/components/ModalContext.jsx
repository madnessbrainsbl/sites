import { createContext, useContext, useState, useEffect } from "react";
import axios from "axios";
import { apiUrl } from "../config";

const ModalContext = createContext();

export const ModalProvider = ({ children }) => {
  const [modalIndex, setModalIndex] = useState(null);
  const [isSecondModalOpen, setIsSecondModalOpen] = useState(false);
  const [videosData, setVideosData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    axios
      .get(`${apiUrl}/api/main-page`)
      .then((response) => {
        if (response.data.success) {
          setVideosData(response.data.data[0].video_slider);
        } else {
          setError("Error fetching data");
        }
        setLoading(false);
      })
      .catch((error) => {
        console.error("Error fetching data:", error);
        setError("Error fetching data");
        setLoading(false);
      });
  }, []);

  const openModal = (index) => {
    if (videosData && index >= 0 && index < videosData.length) {
      setModalIndex(index);
      document.body.style.overflow = "hidden";
    }
  };

  const closeModal = () => {
    setModalIndex(null);
    setIsSecondModalOpen(false);
    document.body.style.overflow = "";
  };

  const openSecondModal = () => {
    console.log("openSecondModal: Setting isSecondModalOpen to true");
    setIsSecondModalOpen(true);
    document.body.style.overflow = "hidden";
  };

  const closeSecondModal = () => {
    console.log("closeSecondModal: Setting isSecondModalOpen to false");
    setIsSecondModalOpen(false);
    document.body.style.overflow = modalIndex !== null ? "hidden" : "";
  };

  return (
    <ModalContext.Provider
      value={{
        modalIndex,
        isSecondModalOpen,
        videosData,
        loading,
        error,
        openModal,
        closeModal,
        openSecondModal,
        closeSecondModal,
      }}
    >
      {children}
    </ModalContext.Provider>
  );
};

export const useModal = () => useContext(ModalContext);