import React from "react";
import Image from "next/image";
import Link from "next/link";
import { styled } from "@mui/system";
import { Box, Container, Grid, Stack, Typography } from "@mui/material";
import IconButton from "../IconButton/IconButton";

import Links from "../../constants/Links";

const ImageContainer = styled("div")(({}) => ({
  position: "relative",
  width: "200px",
  height: "35px",
}));

const FooterLink = styled(Link)(({ theme }) => ({
  fontSize: "18px",
  color: "#FFFFFF",
  textDecoration: "none",

  "&:hover": {
    color: `${theme.palette.primary.main}`,
  },
}));

const data = {
  explore: [
    {
      name: "Become a member",
      link: "/",
    },
    {
      name: "Google Developer Groups",
      link: "/",
    },
    {
      name: "Code of Conduct",
      link: "/",
    },
    {
      name: "Partner with us",
      link: "/",
    },
  ],

  social: [
    {
      name: "Facebook",
      link: "/",
    },
    {
      name: "Instagram",
      link: "/",
    },
    {
      name: "Twitter",
      link: "/",
    },
    {
      name: "WhatsApp",
      link: "/",
    },
  ],
};

const Footer = () => {
  return (
    <Box
      sx={{
        backgroundColor: "#0F0F0F",
      }}
    >
      <Container>
        <Grid
          sx={{
            padding: "30px 0 40px",
          }}
          container
          spacing={4}
        >
          <Grid item xs={12} sm={12} md={4}>
            <Stack direction="column" spacing={4}>
              <ImageContainer>
                <Image src="/assets/logo.png" fill alt="flutter" />
              </ImageContainer>
              <IconButton
                icon="/assets/meetup.svg"
                variant="text"
                href={Links.MEETUP_LINK}
                sx={{
                  marginLeft: "1rem !important",
                }}
              >
                Join the Meetup group
              </IconButton>
            </Stack>
          </Grid>

          <Grid item xs={12} sm={12} md={8}>
            <Grid container spacing={5}>
              <Grid item xs={12} md={6} lg={6}>
                <Stack direction="column" spacing={2}>
                  <Typography variant="footerHeading">Explorer</Typography>
                  {data.explore.map((item, index) => (
                    <FooterLink href={item.link} key={index}>
                      {item.name}
                    </FooterLink>
                  ))}
                </Stack>
              </Grid>

              <Grid item xs={12} md={6} lg={6}>
                <Stack direction="column" spacing={2}>
                  <Typography variant="footerHeading">Connect</Typography>
                  {data.social.map((item, index) => (
                    <FooterLink href={item.link} key={index}>
                      {item.name}
                    </FooterLink>
                  ))}
                </Stack>
              </Grid>
            </Grid>
          </Grid>
        </Grid>
      </Container>
    </Box>
  );
};

export default Footer;
