import React from "react";
import Image from "next/image";
import { styled } from "@mui/system";
import { Button, Button as MUIButton } from "@mui/material";
import { lighten } from "polished";

const ButtonStyles = styled(MUIButton)(({ theme }) => ({
  color: `${theme.palette.primary.text}`,
  backgroundColor: "#fff",
  border: `2px solid ${theme.palette.primary.main}`,

  "&:hover": {
    backgroundColor: `${theme.palette.primary.main}`,
    color: "#fff",
  },

  fontSize: "0.8rem",
  borderRadius: "30px",
  maxWidth: "300px",
  width: "100%",

  // paddingLeft: "20px",
  [theme.breakpoints.up("sm")]: {
    width: "min-content",
    whiteSpace: "nowrap",

    position: "relative",
    paddingLeft: "40px",
    paddingRight: "10px",
    zIndex: "1",
  },
}));

const IconImage = styled("img")(({ theme }) => ({
  width: "40px",
  height: "40px",
  marginRight: "10px",
  // zIndex: "-1",

  [theme.breakpoints.up("sm")]: {
    // position: "absolute",
    width: "60px",
    height: "60px",
    position: "absolute",
    left: "-20px",
    top: "50%",
    transform: "translateY(-50%)",
  },
}));

const IconButton = ({ icon, children, ...otherProps }) => {
  return (
    <ButtonStyles {...otherProps}>
      <IconImage src={icon} alt="icon" />
      {children}
    </ButtonStyles>
  );
};

export default IconButton;
