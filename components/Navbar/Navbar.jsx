import React from "react";
import Link from "next/link";
import { Box, Container, Grid } from "@mui/material";
import { styled } from "@mui/material/styles";
import Image from "next/image";
import Button from "../Button/Button";

const Nav = styled("nav")({
  backgroundColor: "#0F0F0F",
  padding: "14px 0",
});

const NavList = styled("div")({
  display: "flex",
  gap: "2rem",
  alignItems: "center",
});

const NavLink = styled(Link)(({ theme }) => ({
  color: "#FFFFFF ",
  textDecoration: "none",

  "&:hover": {
    color: `${theme.palette.primary.main}`,
  },
}));

const Navbar = () => {
  return (
    <Nav>
      <Container>
        <Grid
          container
          direction="row"
          justifyContent="space-between"
          alignItems="center"
        >
          <Link href="/">
            <Image src="/assets/logo.png" alt="logo" width={200} height={30} />
          </Link>

          <NavList>
            <NavLink href="/">Wall of fame</NavLink>
            <NavLink href="/">Upcoming Events</NavLink>
            <NavLink href="/">Members</NavLink>
            <Button href="/">Join Us</Button>
          </NavList>
        </Grid>
      </Container>
    </Nav>
  );
};

export default Navbar;
