import { usePosts } from "./hooks";
import { PostItem } from "./components";
import Stack from "@mui/material/Stack";

export const PostList = () => {
  const posts = usePosts();

  return (
    <Stack
      direction={{ xs: "column", sm: "row" }}
      spacing={{ xs: 1, sm: 2, md: 4 }}
    >
      {posts.map((post) => (
        <PostItem key={post.id} item={post} />
      ))}
    </Stack>
  );
};
