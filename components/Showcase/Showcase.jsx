import React from "react";
import Image from "next/image";
import { styled } from "@mui/system";
import { Box, Container, Grid, Typography } from "@mui/material";

const StyledGrid = styled("div")(({ type, theme }) => ({
  display: "grid",
  gap: "0rem",
  gridTemplateColumns: "1fr",
  placeItems: "center",

  [theme.breakpoints.up("md")]: {
    gridTemplateColumns: `${type === "community" ? "1fr" : "repeat(2,1fr)"}`,
  },

  [theme.breakpoints.up("lg")]: {
    gap: "1rem",
    gridTemplateColumns: `${type === "community" ? "1fr" : "repeat(3,1fr)"}`,
  },
}));

const ImageContainer = styled("div")(({ type, theme }) => ({
  position: "relative",
  height: "200px",
  width: "200px",

  "& img": {
    objectFit: "contain",
  },
}));

const data = ["/assets/flutter.png", "/assets/gdg.png", "/assets/workz.png"];

const PoweredBy = ({ type }) => {
  if (type === "poweredBy") {
    return (
      <Container
        sx={{
          paddingBottom: "100px",
        }}
      >
        <Box
          sx={{
            marginBottom: "40px",
          }}
        >
          <Typography variant="poster">Powered By</Typography>
        </Box>

        <StyledGrid>
          {data.map((item, index) => (
            <ImageContainer key={index}>
              <Image
                src={item}
                alt="powered"
                fill
                style={{
                  objectFit: "contain",
                }}
              />
            </ImageContainer>
          ))}
        </StyledGrid>
      </Container>
    );
  } else if (type === "communityPartners") {
    return (
      <Container
        sx={{
          paddingBottom: "100px",
        }}
      >
        <Box
          sx={{
            marginBottom: "40px",
          }}
        >
          <Typography variant="poster">Community Partners</Typography>
        </Box>

        <StyledGrid type="community">
          <ImageContainer type="community">
            <Image
              src="/assets/clueless.png"
              alt="clueless"
              fill
              style={{
                objectFit: "contain",
              }}
            />
          </ImageContainer>
        </StyledGrid>
      </Container>
    );
  } else {
    return (
      <Container
        sx={{
          paddingBottom: "100px",
        }}
      >
        <Box
          sx={{
            marginBottom: "40px",
          }}
        >
          <Typography variant="poster">Please add a type</Typography>
        </Box>
      </Container>
    );
  }
};

export default PoweredBy;
