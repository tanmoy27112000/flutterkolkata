import React from "react";
import Image from "next/image";
import Button from "../Button/Button";
import { styled } from "@mui/system";

const ShowCaseCard = styled("div")(({}) => ({
  background: "#FFFFFF",
  border: "1px solid #D1D1D1",
  borderRadius: "15px",
  padding: "9px 10px",
}));

const ShowcaseImageContainer = styled("div")(({}) => ({
  position: "relative",
  height: "200px",
}));

const Date = styled("p")(({}) => ({
  fontSize: "15px",
  lineHeight: "18px",
  color: "#000000",
}));

const Name = styled("h4")(({}) => ({
  margin: 0,
}));
const Description = styled("p")(({}) => ({}));

const UpcomingEventsCard = ({ data }) => {
  const { image, name, date, description, link } = data;

  return (
    <ShowCaseCard>
      <ShowcaseImageContainer>
        <Image src={image} alt={name} fill />
      </ShowcaseImageContainer>
      <Date>{date}</Date>
      <Name>{name}</Name>
      <Description>{description}</Description>
      <Button href={link}>Attend</Button>
    </ShowCaseCard>
  );
};

export default UpcomingEventsCard;
