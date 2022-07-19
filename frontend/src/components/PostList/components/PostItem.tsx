/** @jsxImportSource @emotion/react */
import { css } from "@emotion/react";
import Card from "@mui/material/Card";
import CardActions from "@mui/material/CardActions";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import Button from "@mui/material/Button";
import Typography from "@mui/material/Typography";
import { PostItemInterface } from "../interfaces";

interface Props {
  item: PostItemInterface;
}

export const PostItem = ({
  item: { slug, headline, content, image },
}: Props) => (
  <Card
    css={css`
      width: 264px;
      margin: 15px;
    `}
  >
    <CardMedia
      component="img"
      height="200"
      image={`static/${image}`}
      alt="green iguana"
    />
    <CardContent>
      <Typography gutterBottom variant="h5" component="div">
        {headline}
      </Typography>
      <Typography variant="body2" color="text.secondary">
        {content}
      </Typography>
    </CardContent>
    <CardActions>
      <Button size="small">More</Button>
    </CardActions>
  </Card>
);
