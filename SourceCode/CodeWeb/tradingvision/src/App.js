import { BrowserRouter as Router, Route, Routes, Navigate, useParams } from "react-router-dom";
import './App.css';
import Header from '././components/header/Header';
import Homepage from './pages/homepage/Homepage';
import Stockpage from './pages/specificticker/Stockpage';
import { makeStyles } from "@material-ui/core";
import { FooterContainer } from './containers/footer';
import Favorite from "./pages/favorite/Favorite";
import Reminder from "./pages/reminder/Reminder";
import Login from "./pages/login/Login";
import Profile from "./pages/profile/Profile";
import React, {useState, useEffect} from 'react';
import axios from "axios";
import PageNotFound from "./pages/error/PageNotFound";
const useStyles = makeStyles(()=>({
  App:{
    backgroundColor: "black",
    color: "white",
    minHeight: "calc(100vh-170px)",
  },
  Footer: {
    height: "170px",
  }
}));

function App() {
  
  const classes = useStyles() 
  const [user,setUser] = useState(null);
  const [stocksList, setStockList] = useState([]);
  const ticker = useParams();
  useEffect(() => {
    getUser();
    getTickers();
  }, []);


  const getUser = () => {
      axios.get('/auth/success')
        .then((response) => {
          if (response.status === 200) return response;
          throw new Error("authentication has been failed!");
        })
        .then((resObject) => {
          setUser(resObject.data.user);
        })
        .catch((err) => {
          console.log(err);
        });
    };


    const getTickers = () => {
      axios.get(`/api/companyinfo?field=Ticker`)
      .then((response) => {
        if (response.status === 200) return response;
        throw new Error("authentication has been failed!");
      })
      .then((resObject) =>{
        setStockList(resObject.data.companyinfo);
      })

      .catch((err) => {
        console.log(err);
      })
    }

  return (
    <div className={classes.App} id = "root">
      <Router >
        <div id = "content-wrapper">
          <Header user={user}/>
          <Routes>
            <Route path="*" element={<PageNotFound/>}/>
            <Route exact path="/" element={<Homepage user={user}/>} />
            <Route exact path="/stocks/:ticker"  element={<Stockpage user={user}/>}/>
            
            <Route path="/favorite" element={user ? <Favorite user={user}/> : <Navigate to="/login"/>} />
            <Route path="/reminder" element={user ? <Reminder user={user}/> : <Navigate to="/login"/>}/>
            <Route path="/login" element={user ? <Navigate to="/"/> : <Login/>} />
            <Route path="/profile" element={user ? <Profile user={user}/> : <Navigate to="/login"/>}/>
            
          </Routes>
          </div>
          <div id="footer-wrapper">
          <FooterContainer className = {classes.Footer}/>
          </div>
      </Router>
    </div>
  );
}

export default App;
