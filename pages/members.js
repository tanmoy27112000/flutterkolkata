import {collection, getDocs} from "firebase/firestore";
import {db} from "../src/firebase/config";
import {Avatar, Container} from "@mui/material";
import {styled} from "@mui/material/styles";
import LinkedInIcon from '@mui/icons-material/LinkedIn';
import GitHubIcon from '@mui/icons-material/GitHub';
import FacebookIcon from '@mui/icons-material/Facebook';

const p = styled('p');
const container = styled('div');
const Heading = styled("h1")(({ theme }) => ({
  fontWeight: 700,
  fontSize: "30px",
  margin: 0,
  marginBottom: "20px",
  lineHeight: "1",
  textAlign: "center",
  color: `${theme.palette.primary.text}`,
  [theme.breakpoints.up('md')]: {
    fontSize: "55px"
  },
  [theme.breakpoints.up('lg')]: {
    fontSize: "68px",
  },
}));
const SubHeading = p(({theme}) => ({
  fontSize: '20px',
  textAlign: 'center',
  marginBottom: '50px',
  [theme.breakpoints.up('md')]: {
    fontSize: "30px"
  },
}));
const MembersContainer = container(() => ({
  display: 'flex',
  flexWrap: 'wrap',
  gap: '40px',
  justifyContent: 'center'
}));
const MemberCardContainer = container(() => ({
  width: 250,
  height: 300,
  display: 'flex',
  flexDirection: 'column',
  alignItems: 'center',
  justifyContent: 'space-between',
  textAlign: 'center',
}));
const AvatarContainer = container(() => ({
  width: 100, height: 100,
}));
const LinkContainer = container(() => ({
  display: 'flex', columnGap: 10,
}));
const LinkIconButton = styled('button')(() => ({
  border: "none",
  width: "40px",
  height: "40px",
  borderRadius: "50%",
  cursor: "pointer",
  'a': {
    color: 'inherit'
  }
}))
const Description = p(() => ({
  width: '100%', whiteSpace: 'nowrap', overflow: "hidden", textOverflow: "ellipsis", margin: 0
}));
const containerSx = {padding: {xs: '20px', md: '100px 20px', lg: '100px 0'} };

function MemberCard({member}) {
  const profilePicUrl = member?.imageUrl ?? '/user.png';

  return (
    <MemberCardContainer>
      <AvatarContainer>
        <Avatar src={profilePicUrl} sx={{width: '100%', height: '100%'}} />
      </AvatarContainer>
      <div>
        {member?.name && <h3 style={{margin: 0}}>{member.name}</h3>}
        {member?.title && <p style={{margin: 0, color: '#bbb'}}>{member.title}</p>}
      </div>
      {member?.description && <Description>{member.description}</Description>}
      <LinkContainer>
        {member?.linkedin && <LinkIconButton><a href={member.linkedin}><LinkedInIcon/></a></LinkIconButton>}
        {member?.gitHub && <LinkIconButton><a href={member.gitHub}><GitHubIcon/></a></LinkIconButton>}
        {member?.facebook && <LinkIconButton><a href={member.facebook}><FacebookIcon/></a></LinkIconButton>}
      </LinkContainer>
    </MemberCardContainer>
  );
}

function MembersList({members}) {
  return (
    <MembersContainer>
      {members && members.map((member, index) => <MemberCard member={member} key={index} />)}
    </MembersContainer>
  );
}

export default function Members({members}) {
  return (
    <Container sx={containerSx}>
      <Heading>Our community members</Heading>
      <SubHeading>We're the Flutter Kolkata team, Meet the members</SubHeading>
      <MembersList members={members} />
    </Container>
  )
};

export async function getStaticProps() {
  const querySnapshot = await getDocs(collection(db, 'member_collection'))
  let members = [];

  querySnapshot.forEach((member) => {
    members.push(member.data());
  })

  return {
    props: {
      members
    },
    revalidate: 3600,
  }
}
