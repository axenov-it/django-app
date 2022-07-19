/** @jsxImportSource @emotion/react */
import { css } from "@emotion/react";
import Container from "@mui/material/Container";
import { Box } from "@mui/system";

export const Header = () => (
  <Box
    css={css`
      background: #000;
      min-height: 80px;
      display: flex;
      align-items: center;
    `}
  >
    <Container
      css={css`
        color: white;
        font-size: 36px;
      `}
      maxWidth="md"
    >
      BLOG APP
    </Container>
  </Box>
);
