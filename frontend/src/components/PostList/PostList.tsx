/** @jsxImportSource @emotion/react */
import { css } from "@emotion/react";
import { usePosts } from "./hooks";
import { PostItem } from "./components";
import { Box } from "@mui/material";

export const PostList = () => {
  const posts = usePosts();

  return (
    <Box
      css={css`
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        margin: 0 -15px;
      `}
    >
      {posts.map((post) => (
        <PostItem key={post.id} item={post} />
      ))}
    </Box>
  );
};
