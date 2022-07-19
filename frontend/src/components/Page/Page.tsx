import Container from "@mui/material/Container";
import { ReactNode } from "react";

interface Props {
  children: ReactNode;
}

export const Page = ({ children }: Props) => (
  <Container maxWidth="md">{children}</Container>
);
