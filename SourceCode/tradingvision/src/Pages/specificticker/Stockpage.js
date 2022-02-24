import React, {useState} from 'react';
import {useParams} from 'react-router-dom';
import useStyles from './style'
import {Container,
      Typography,
      Tab,
      Divider, } from '@material-ui/core'
import FavoriteBorderIcon from '@mui/icons-material/FavoriteBorder';
import { TabContext, TabList, TabPanel } from '@material-ui/lab';
import Profile from '../../components/specificticker/Profile'
import Financials from '../../components/specificticker/Financials'
import ArrowForwardIosIcon from '@mui/icons-material/ArrowForwardIos';

const Stockpage = () => {
  const classes = useStyles()
  const {ticker} = useParams()
  const [stock, setStock] = useState()
  const [value, setValue] = React.useState('1');
    const handleChange = (event, newValue) => {
        setValue(newValue);
      };


  return (
  
      <Container className={classes.container}>
      <div className={classes.title}>
        <Typography variant="h6" className={classes.field} >Field</Typography>
        <Typography variant="h4" className={classes.name}>
          Company Name (Ticker label) 
          <FavoriteBorderIcon sx={{ fontSize: 50 }} className={classes.fav_border}/>
        </Typography>
        <div className={classes.line}/>
      </div>

      <div className={classes.info}>

        <TabContext value={value}>
              
              <TabList
              className={classes.tablist}
              onChange={handleChange} 
              aria-label="simple tabs "
              
              TabIndicatorProps={{
              style: {
                  backgroundColor: "rgba(0,0,0,0)",
              },
              
              }}>
                  <Tab 
                    label="Profile" 
                    value="1" 
                    className={classes.tab}/>
                  <Divider 
                    orientation="vertical" 
                    variant="inset" 
                    flexItem 
                    className={classes.divider}
                    style={{
                          height:"50px",
                          marginTop: "10px",
                          marginLeft: "-25px",
                          backgroundColor: "rgba(255, 165, 0, 0.5)"
                          }}
                    />
                  <Tab 
                    label="Financials" 
                    value="2" 
                    className={classes.tab}/>
              </TabList>

          <TabPanel value="1"><Profile/></TabPanel>
          <TabPanel value="2"><Financials/></TabPanel>
        </TabContext>
      </div>

      </Container>
  )
}

export default Stockpage