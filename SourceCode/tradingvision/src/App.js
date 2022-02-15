import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import './App.css';

import Header from '././Components/Header';
import Homepage from './Pages/Homepage';
import Stockpage from './Pages/Stockpage';
import { makeStyles } from "@material-ui/core";

const useStyles = makeStyles(()=>({
  App:{
    backgroundColor: "#14161a",
    color: "white",
    minHeight: "100vh",

  },
}));

function App() {
  
  const classes = useStyles() 

  return (
    <div className={classes.App} >
      <Router >
          <Header/>
          <Routes>
            <Route exact path="/" element={<Homepage/>} />
            <Route exact path="/stocks/:ticker" element={<Stockpage/>} />
          </Routes>
      </Router>
    </div>
  );
}

export default App;
