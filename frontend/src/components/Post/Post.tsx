/** @jsxImportSource @emotion/react */
import { css } from "@emotion/react";
import KeyboardBackspaceIcon from "@mui/icons-material/KeyboardBackspace";
import { Link } from "react-router-dom";
import { usePost } from "./hooks";

export const Post = () => {
  const post = usePost();

  if (!post) return <></>;

  const { headline, content, image } = post;

  return (
    <div>
      <Link to="/">
        <KeyboardBackspaceIcon
          css={css`
            width: 50px;
            height: 50px;
            color: black;
            margin-top: 15px;
          `}
        />
      </Link>
      <h1>{headline}</h1>

      <img
        css={css`
          max-width: 100%;
        `}
        src={`/static/${image}`}
        alt=""
      />
      <p>{content}</p>
    </div>
  );
};
