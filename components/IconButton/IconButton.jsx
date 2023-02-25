import React from "react";
import Image from "next/image";
import { styled } from "@mui/system";
import { Button, Button as MUIButton } from "@mui/material";
import { lighten } from "polished";

const ButtonStyles = styled(MUIButton)(({ theme }) => ({
  borderRadius: "30px",
  color: `${theme.palette.primary.text}`,
  backgroundColor: "#fff",
  border: `2px solid ${theme.palette.primary.main}`,

  position: "relative",
  width: "230px",
  height: "40px",

  "& img": {
    left: "-50% !important",
    top: "50% !important",
    transform: "translateY(-50%)",
    height: "130% !important",
  },

  "&:hover": {
    backgroundColor: `${theme.palette.primary.main}`,
    color: "#fff",
  },
}));

const IconContainer = styled("div")(({ theme }) => ({}));

const IconButton = ({ icon, children, ...otherProps }) => {
  return (
    <ButtonStyles {...otherProps}>
      <Image src={icon} fill />

      {children}
    </ButtonStyles>
  );
};

export default IconButton;
