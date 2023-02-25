import React from "react";
import { styled } from "@mui/system";
import { Button as MUIButton } from "@mui/material";
import { lighten } from "polished";

// const ButtonStyles = styled(MUIButton)(({ theme }) =>({
//   backgroundColor: `${theme.palette.main}`,
// });

const ButtonStyles = styled(MUIButton)(({ theme }) => ({
  backgroundColor: `${theme.palette.primary.main}`,
  borderRadius: "30px",
  color: "#fff",
  padding: "5px 20px",

  "&:hover": {
    backgroundColor: lighten(0.1, theme.palette.primary.main),
  },
}));

const Button = ({ children, ...otherProps }) => {
  return <ButtonStyles {...otherProps}>{children}</ButtonStyles>;
};

export default Button;
