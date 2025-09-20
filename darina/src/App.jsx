import "./App.css";
import React, { useEffect, useState, lazy, Suspense } from "react";
import { BrowserRouter as Router, Routes, Route, useLocation } from "react-router-dom";
import { AppRoot } from "@telegram-apps/telegram-ui";
import Header from "./components/Header/Header";
import Footer from "./components/Footer/Footer";
import ButtonsTypography from "./components/Module/buttons/ButtonsTypography";
import CustomModal from "./components/Module/CustomModal/CustomModal";
import { apiUrl } from "./config";
import ScrollToTop from "./components/Module/GoToTop/ScrollToTop";
import useScrollAnimation from "./components/Module/hooks/useScrollAnimation";
import useAnimationElement from "./components/Module/hooks/useAnimationElement";
import { ModalProvider, useModal } from "./components/ModalContext";

// Route-level code splitting
const MainPage = lazy(() => import("./components/Pages/MainPage"));
const KitchenPage = lazy(() => import("./components/Pages/KitchenPage"));
const Typography = lazy(() => import("./components/Pages/Typography"));
const Shkaf = lazy(() => import("./components/Pages/Shkaf"));
const Prikhozhie = lazy(() => import("./components/Pages/Prikhozhie"));
const Garderobnye = lazy(() => import("./components/Pages/Garderobnye"));
const Kontakty = lazy(() => import("./components/Pages/Kontakty"));
const RabochieZony = lazy(() => import("./components/Pages/RabochieZony"));
const EmeraldKitchen = lazy(() => import("./components/Pages/KichenPages/EmeraldKitchen"));

// Lazy-load rarely used modals
const ModelCall = lazy(() => import("./components/Module/ModelCall/ModelCall"));
const MultiStepForm = lazy(() => import("./components/Pages/MultiStepForm/MultiStepForm"));

function ModalHandler({ setIsModalOpen, setIsMultiStepOpen }) {
  const location = useLocation();

  useEffect(() => {
    const searchParams = new URLSearchParams(location.search);
    if (searchParams.get("modal") === "call") {
      setIsModalOpen(true);
    }
    if (searchParams.get("modal") === "multistep") {
      setIsMultiStepOpen(true);
    }
  }, [location, setIsModalOpen, setIsMultiStepOpen]);

  return null;
}

function AppContent() {
  useAnimationElement("anigenn");
  useScrollAnimation();

  const [kitchenRoutes, setKitchenRoutes] = useState([]);
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [isMultiStepOpen, setIsMultiStepOpen] = useState(false);
  const { modalIndex, videosData, loading, error, openModal: openVideoModal, closeModal } = useModal();

  useEffect(() => {
    async function fetchKitchens() {
      try {
        const response = await fetch(apiUrl + "/api/kitchen/list");
        const data = await response.json();
        if (data.success) {
          console.log("kitchenRoutes:", data.data);
          setKitchenRoutes(data.data);
        } else {
          console.error("Ошибка в данных API:", data);
        }
      } catch (error) {
        console.error("Ошибка при получении данных кухонь:", error);
      }
    }

    fetchKitchens();
  }, []);

  const handleCloseModal = () => {
    setIsModalOpen(false);
    const currentPath = window.location.pathname;
    window.history.pushState({}, document.title, `${currentPath}`);
  };

  const handleOpenModal = () => {
    console.log("handleOpenModal called");
    setIsModalOpen(true);
  };

  const handleCloseMultiStep = () => {
    setIsMultiStepOpen(false);
    const currentPath = window.location.pathname;
    window.history.pushState({}, document.title, `${currentPath}`);
  };

  const handleOpenMultiStep = () => {
    console.log("handleOpenMultiStep вызвана");
    setIsMultiStepOpen(true);
  };

  const handleOpenVideoModal = (index) => {
    if (videosData && index >= 0 && index < videosData.length) {
      openVideoModal(index);
    }
  };

  useEffect(() => {
    console.log("isModalOpen changed:", isModalOpen);
  }, [isModalOpen]);

  const isMobile = window.innerWidth < 768;
  const isVideoModalOpen = modalIndex !== null;
  const modalImage = isVideoModalOpen ? videosData?.[modalIndex]?.image : null;
  const modalDescription = isVideoModalOpen ? videosData?.[modalIndex]?.description : null;

  return (
    <>
      <Router>
        <header>
          <Header
            openCallModal={handleOpenModal}
            openModalM={handleOpenMultiStep}
            openVideoModal={handleOpenVideoModal}
          />
        </header>

        <ScrollToTop />

        <Suspense fallback={<div>Loading...</div>}>
          <Routes>
            <Route
              path="/"
              element={
                <MainPage
                  openModal={handleOpenModal}
                  openModalM={handleOpenMultiStep}
                  openVideoModal={handleOpenVideoModal}
                />
              }
            />
            <Route
              path="/kitchen"
              element={
                <KitchenPage
                  openModal={handleOpenModal}
                  openModalM={handleOpenMultiStep}
                  openVideoModal={handleOpenVideoModal}
                />
              }
            />
            {kitchenRoutes.map((route) => (
              <Route
                key={route.slug}
                path={`/kitchen/${route.slug}`}
                element={
                  <EmeraldKitchen
                    title={`${route.name} | Ваш сайт`}
                    description={`Описание кухни ${route.name}.`}
                    keywords={`кухня, ${route.name}, дизайн`}
                    openModal={handleOpenModal}
                    openModalM={handleOpenMultiStep}
                    openVideoModal={handleOpenVideoModal}
                  />
                }
              />
            ))}
            <Route
              path="/shkaf"
              element={
                <Shkaf
                  openModal={handleOpenModal}
                  openModalM={handleOpenMultiStep}
                  openVideoModal={handleOpenVideoModal}
                />
              }
            />
            <Route
              path="/prikhozhie"
              element={
                <Prikhozhie
                  openModal={handleOpenModal}
                  openModalM={handleOpenMultiStep}
                  openVideoModal={handleOpenVideoModal}
                />
              }
            />
            <Route
              path="/garderobnye"
              element={
                <Garderobnye
                  openModal={handleOpenModal}
                  openModalM={handleOpenMultiStep}
                  openVideoModal={handleOpenVideoModal}
                />
              }
            />
            <Route
              path="/kontakty"
              element={
                <Kontakty
                  openModal={handleOpenModal}
                  openModalM={handleOpenMultiStep}
                  openVideoModal={handleOpenVideoModal}
                />
              }
            />
            <Route
              path="/rabochie-zony"
              element={
                <RabochieZony
                  openModal={handleOpenModal}
                  openModalM={handleOpenMultiStep}
                  openVideoModal={handleOpenVideoModal}
                />
              }
            />
            <Route
              path="/typography"
              element={
                <Typography
                  openModal={handleOpenModal}
                  openModalM={handleOpenMultiStep}
                  openVideoModal={handleOpenVideoModal}
                />
              }
            />
          </Routes>
        </Suspense>

        <ModalHandler
          setIsModalOpen={setIsModalOpen}
          setIsMultiStepOpen={setIsMultiStepOpen}
        />

        <Suspense fallback={null}>
          {isModalOpen && (
            <ModelCall setCloseModelHandler={handleCloseModal} />)
          }
        </Suspense>

        <Suspense fallback={null}>
          {isMultiStepOpen && (
            <MultiStepForm
              isModalOpen={isMultiStepOpen}
              closeModal={handleCloseMultiStep}
            />
          )}
        </Suspense>
      </Router>
    </>
  );
}

function App() {
  return (
    <AppRoot>
      <ModalProvider>
        <AppContent />
      </ModalProvider>
    </AppRoot>
  );
}

export default App;