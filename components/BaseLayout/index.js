import Navbar from "../Navbar";
import Footer from "../Footer/Footer";

export default function BaseLayout({children}) {
  return (
    <>
      <Navbar/>
      {children}
      <Footer/>
    </>
  )
}
