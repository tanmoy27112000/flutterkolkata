import React from "react";
import { Box, Container, Typography } from "@mui/material";
import { Pagination } from "swiper";

import { styled } from "@mui/system";
import { Swiper, SwiperSlide } from "swiper/react";

import UpcomingEventsCard from "./UpcomingEventsCard";
// Import Swiper styles
import "swiper/css";
import "swiper/css/pagination";

const ImageContainer = styled("div")(({}) => ({
  "& .swiper": {
    width: "100%",
    height: "100%",
  },

  "& .swiper-slide": {
    // textAlign: "center",
    // fontSize: "18px",
    // display: "flex",
    // justifyContent: "center",
    // alignItems: "center",

    width: "300px",
    height: "auto",
  },

  "& .swiper-slide img": {
    display: "block",
    width: "100%",
    height: "100%",
    objectFit: "cover",
  },
}));

const data = [
  {
    name: "Flutter Forward Extended - Kolkata",
    image: "/assets/showcase.png",
    date: "Saturday, March 25, 2023 • In-Person Event",
    description:
      "Flutter Forward Extended is a one-day event in Kolkata on March 25th, dedicated to the open-source framework, Flutter. The event will feat ...",

    link: "/",
  },

  {
    name: "Flutter Forward Extended - Kolkata",
    image: "/assets/showcase.png",
    date: "Saturday, March 25, 2023 • In-Person Event",
    description:
      "Flutter Forward Extended is a one-day event in Kolkata on March 25th, dedicated to the open-source framework, Flutter. The event will feat ...",

    link: "/",
  },

  {
    name: "Flutter Forward Extended - Kolkata",
    image: "/assets/showcase.png",
    date: "Saturday, March 25, 2023 • In-Person Event",
    description:
      "Flutter Forward Extended is a one-day event in Kolkata on March 25th, dedicated to the open-source framework, Flutter. The event will feat ...",

    link: "/",
  },

  {
    name: "Flutter Forward Extended - Kolkata",
    image: "/assets/showcase.png",
    date: "Saturday, March 25, 2023 • In-Person Event",
    description:
      "Flutter Forward Extended is a one-day event in Kolkata on March 25th, dedicated to the open-source framework, Flutter. The event will feat ...",

    link: "/",
  },

  {
    name: "Flutter Forward Extended - Kolkata",
    image: "/assets/showcase.png",
    date: "Saturday, March 25, 2023 • In-Person Event",
    description:
      "Flutter Forward Extended is a one-day event in Kolkata on March 25th, dedicated to the open-source framework, Flutter. The event will feat ...",

    link: "/",
  },
];

const UpcomingEvents = () => {
  return (
    <Box
      sx={{
        paddingBottom: "100px",
      }}
      maxWidth="xlg"
    >
      <Container
        sx={{
          marginBottom: "40px",
        }}
      >
        <Typography variant="poster">Upcoming Events</Typography>
      </Container>
      {/* <Swiper
        slidesPerView={2}
        spaceBetween={30}
        grabCursor={true}
        pagination={{
          clickable: true,
        }}
        modules={[Pagination]}
        className="mySwiper"
        breakpoints={{
          "@0.75": {
            slidesPerView: 2,
            spaceBetween: 10,
          },
          "@1.00": {
            slidesPerView: 3,
            spaceBetween: 10,
          },
          "@1.50": {
            slidesPerView: 4,
            spaceBetween: 10,
          },
        }}
      >
        
      </Swiper> */}

      <ImageContainer>
        <Swiper slidesPerView={"auto"} spaceBetween={30} className="mySwiper">
          {data.map((item, index) => (
            <SwiperSlide key={index}>
              <UpcomingEventsCard data={item} />
            </SwiperSlide>
          ))}
        </Swiper>
      </ImageContainer>
    </Box>
  );
};

export default UpcomingEvents;

// slidesPerView={1}
// spaceBetween={10}
// grabCursor
// loop
