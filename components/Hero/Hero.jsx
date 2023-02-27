import { Box, Container, Grid, useTheme } from "@mui/material";
import { styled } from "@mui/system";
import Image from "next/image";
import React from "react";

import WhatsAppIcon from "../../public/assets/whatsapp.svg";
import MeetupIcon from "../../public/assets/meetup.svg";
import IconButton from "../IconButton/IconButton";
import Links from "../../constants/Links";

const HeroContainer = styled(Grid)(({}) => ({
  paddingTop: "100px",
  // position: "relative",
}));

const KolkataImgContainer = styled("div")(({ theme }) => ({
  position: "relative",
  height: "600px",
  marginTop: "-100px",
  zIndex: -2,

  [theme.breakpoints.down("lg")]: {
    marginTop: "20px",
    height: "300px",
  },

  [theme.breakpoints.down("md")]: {
    height: "200px",
  },
}));

const HeroFlex = styled("div")(({}) => ({
  display: "flex",
  alignItems: "center",
  gap: "2rem",
}));

const PhoneImageContainer = styled("div")(({ theme }) => ({
  position: "relative",
  height: "400px",
  width: "100%",

  [theme.breakpoints.down("lg")]: {
    display: "none",
  },
}));

const KolkataImg = styled(Image)(({}) => ({
  // top: "80% !important",
}));

const SmallText = styled("h3")(({ theme }) => ({
  fontSize: "25px",
  margin: 0,
  lineHeight: "1",
  color: `${theme.palette.primary.main}`,
}));

const Heading = styled("h1")(({ theme }) => ({
  fontWeight: 700,
  fontSize: "68px",
  margin: 0,
  marginBottom: "20px",
  lineHeight: "1",
  color: `${theme.palette.primary.text}`,
}));

const Text = styled("p")(({}) => ({}));

const ButtonGroup = styled("div")(({}) => ({
  display: "flex",
  alignItems: "center",
  gap: "20px",
  marginTop: "20px",
  flexWrap: "wrap",
}));

const Hero = () => {
  // const theme = useTheme();
  // console.log(theme);

  return (
    <HeroContainer>
      <Container>
        <HeroFlex>
          <div>
            <SmallText>Welcome to</SmallText>
            <Heading>Flutter Kolkata</Heading>
            <Text>
              Flutter Kolkata Community is all about learning and sharing
              knowledge about flutter and its related technologies. If you are
              from a different background, you can join if you are enthusiastic
              about learning and sharing with fellow developers from Kolkata. We
              will be conducting meetups every month.
            </Text>

            <ButtonGroup>
              <IconButton
                icon="/assets/meetup.svg"
                variant="text"
                href={Links.MEETUP_LINK}
              >
                Join the Meetup group
              </IconButton>
              <IconButton
                icon="/assets/whatsapp.svg"
                variant="text"
                href={Links.WHATSAPP_LINK}
              >
                Join the WhatsApp group
              </IconButton>
            </ButtonGroup>
          </div>
          <PhoneImageContainer>
            <Image
              src="/assets/phone.png"
              alt="phone"
              fill
              style={{ objectFit: "contain" }}
            />
          </PhoneImageContainer>
        </HeroFlex>

        <KolkataImgContainer>
          <KolkataImg src="/assets/kolkata-bg.png" alt="kolkata" fill />
        </KolkataImgContainer>
      </Container>
    </HeroContainer>
  );
};

export default Hero;
