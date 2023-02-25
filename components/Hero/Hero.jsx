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
  position: "relative",
}));

const HeroFlex = styled("div")(({}) => ({
  display: "flex",
  alignItems: "center",
  gap: "2rem",
}));

const PhoneImageContainer = styled("div")(({}) => ({
  position: "relative",
  height: "400px",
  width: "100%",
}));

const KolkataImg = styled(Image)(({}) => ({
  top: "80% !important",
  zIndex: -1,
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
                icon={MeetupIcon}
                variant="text"
                href={Links.MEETUP_LINK}
              >
                Join the Meetup group
              </IconButton>
              <IconButton
                icon={WhatsAppIcon}
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
      </Container>

      <KolkataImg src="/assets/kolkata-bg.png" alt="kolkata" fill />
    </HeroContainer>
  );
};

export default Hero;
