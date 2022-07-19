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

export const PostItem = ({ item: { slug, headline, content } }: Props) => (
  <Card sx={{ width: 345 }}>
    <CardMedia
      component="img"
      height="140"
      image="https://media.4-paws.org/b/e/2/d/be2d88ceb9613ac5066bd11dd950faaf2671bef7/VIER%20PFOTEN_2019-03-15_001-1998x1999-600x600.jpg"
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
