import { usePostsApi } from "hooks";
import { useEffect, useState } from "react";
import { PostItemInterface } from "../interfaces";

export const usePosts = () => {
  const { getPosts } = usePostsApi();
  const [posts, setPosts] = useState<PostItemInterface[]>([]);

  useEffect(() => {
    getPosts().then((data: PostItemInterface[]) => {
      setPosts(data);
    });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return posts;
};
