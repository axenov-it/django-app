import { Route, Routes } from "react-router-dom";
import { HomePage, PostPage } from "pages";

export const Router = () => (
  <Routes>
    <Route path="/" element={<HomePage />} />
    <Route path="/posts/:slug" element={<PostPage />} />
  </Routes>
);
