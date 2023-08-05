import React from "react";
import Link from "next/link";
import { Container, Grid, useMediaQuery } from "@mui/material";
import { styled, useTheme } from "@mui/material/styles";
import Image from "next/image";
import Button from "../Button/Button";

import TemporaryDrawer from "../TemporaryDrawer/TemporaryDrawer";

const Nav = styled("nav")({
  backgroundColor: "#0F0F0F",
  padding: "14px 0",
});

const NavList = styled("div")(({ theme }) => ({
  display: "flex",
  gap: "2rem",
  alignItems: "center",

  [theme.breakpoints.down("md")]: {
    flexDirection: "column",
    marginTop: "5rem",
  },
}));

const NavLink = styled(Link)(({ theme }) => ({
  color: "#FFFFFF ",
  textDecoration: "none",

  [theme.breakpoints.down("md")]: {
    color: "#0F0F0F",
  },

  "&:hover": {
    color: `${theme.palette.primary.main}`,
  },
}));

const NavigationList = () => {
  return (
    <NavList>
      <NavLink href="/">Wall of fame</NavLink>
      <NavLink href="/events">Upcoming Events</NavLink>
      <NavLink href="/">Members</NavLink>
      <Button href="/">Join Us</Button>
    </NavList>
  );
};

const Navbar = () => {
  const theme = useTheme();
  const matches = useMediaQuery(theme.breakpoints.up("md"));

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

          {matches ? (
            <NavigationList />
          ) : (
            <TemporaryDrawer navigationList={<NavigationList />} />
          )}

          {/* <IconButton
            color="#fff"
            aria-label="open drawer"
            edge="start"
            onClick={handleDrawerToggle}
            sx={{ mr: 2 }}
          >
            <HomeIcon sx={{ color: pink[500] }} />
          </IconButton> */}
        </Grid>
      </Container>
    </Nav>
  );
};

export default Navbar;
