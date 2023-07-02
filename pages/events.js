import {Box, Container, Grid, Stack} from "@mui/material";
import Image from "next/image";
import UpcomingEventsCard from "../components/UpcomingEvents/UpcomingEventsCard";
import {collection, getDocs} from 'firebase/firestore';
import {db} from "../src/firebase/config";
import {styled} from "@mui/material/styles";
import eventImg from "../public/assets/event.png";

const Heading = styled("h1")(({ theme }) => ({
  fontWeight: 700,
  fontSize: "30px",
  margin: 0,
  marginBottom: "20px",
  lineHeight: "1",
  textAlign: "center",
  color: `${theme.palette.primary.text}`,
  [theme.breakpoints.up('md')]: {
    fontSize: "55px"
  },
  [theme.breakpoints.up('lg')]: {
    fontSize: "68px",
    textAlign: "start",
  },
}));
const containerSx = {padding: {xs: '20px', md: '100px 20px', lg: '100px 0'} };
const stackDirection = {xs: 'column', sm: 'row'};
const stackJustifyContent = {xs: 'center', sm: 'space-between'};
const boxSx = {width: {xs: '100%', sm: '50%'}};
const imgStyle = {width: '100%', height: 'auto'};
const gridSpacing = { xs: 2, md: 3 };
const gridColumns = { xs: 2, sm: 8, md: 12 };

export default function Events({events}) {
  return (
    <Container sx={containerSx}>
      <Stack direction={stackDirection} justifyContent={stackJustifyContent}  alignItems="center">
        <Box sx={boxSx}>
          <Heading>Upcoming Flutter <br/> Kolkata Events</Heading>
        </Box>
        <Box sx={boxSx}>
          <Image src={eventImg} sizes="100vw" style={imgStyle} alt="events" />
        </Box>
      </Stack>
      <Grid container spacing={gridSpacing} columns={gridColumns}>
        {events && events.map((item, index) => (
          <Grid item xs={2} sm={4} md={4} key={index}>
            <UpcomingEventsCard data={item} />
          </Grid>
        ))}
      </Grid>
    </Container>
  )
};

export async function getStaticProps() {
  const querySnapshot = await getDocs(collection(db, 'events_collection'))
  let events = [];

  querySnapshot.forEach((doc) => {
    const event = doc.data();
    const modifiedEvent = {type: event.type, date: event.date.toDate().toDateString()}
    events.push(modifiedEvent);
  })

  return {
    props: {
      events
    },
    revalidate: 3600,
  }
}
