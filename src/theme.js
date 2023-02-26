import { Roboto } from "@next/font/google";
import { createTheme } from "@mui/material/styles";
import { red } from "@mui/material/colors";

export const roboto = Roboto({
  weight: ["300", "400", "500", "700"],
  subsets: ["latin"],
  display: "swap",
  fallback: ["Helvetica", "Arial", "sans-serif"],
});

// Create a theme instance.
const theme = createTheme({
  palette: {
    primary: {
      main: "#2196F3",
      text: "#0F0F0F",
    },
    secondary: {
      main: "#19857b",
    },
    error: {
      main: red.A400,
    },
    text: {},
  },
  typography: {
    fontFamily: roboto.style.fontFamily,
    poster: {},
    footerHeading: {},
  },
});

theme.typography.poster = {
  // fontSize: "1.2rem",
  // "@media (min-width:600px)": {
  //   fontSize: "1.5rem",
  // },
  // [theme.breakpoints.up("md")]: {
  //   fontSize: "2.4rem",
  // },
  fontWeight: 700,
  fontSize: "1.5rem",
  lineHeight: "53px",
  color: `${theme.palette.primary.text}`,
  "@media (min-width:600px)": {
    fontSize: "2.75rem",
  },
};

theme.typography.footerHeading = {
  fontWeight: 700,
  fontSize: "1rem",
  color: "#fff",
  "@media (min-width:600px)": {
    fontSize: "1.5rem",
  },
};

export default theme;
