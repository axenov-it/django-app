import { usePostsApi } from "hooks";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { PostItemInterface } from "../interfaces";

export const usePost = () => {
  const { getPost } = usePostsApi();
  const { slug } = useParams();

  const [post, setPost] = useState<PostItemInterface>();

  useEffect(() => {
    getPost(slug).then((data) => {
      setPost(data);
    });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return post;
};
