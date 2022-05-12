import React, {useState,useEffect} from 'react'
import Tab from '@material-ui/core/Tab';
import TabContext from '@material-ui/lab/TabContext';
import TabList from '@material-ui/lab/TabList';
import TabPanel from '@material-ui/lab/TabPanel';
import StockTable from '../stocktable/StockTable';
import { Container, 
  createTheme, 
  Typography, 
} from '@material-ui/core'
import useStyles from './style'


const darkTheme = createTheme({
  palette: {
    primary: {
      main: "#fff",
    },
    type: "dark",
  },
});


const StockExchange = ({user}) => {
  const classes = useStyles()
  const [value, setValue] = useState('1');

  const handleChange = (event, newValue) => {
    setValue(newValue);
  };

  // useEffect(() =>{
  //   window.scrollTo(250,250)
  // }, [])

  return (
    
      <Container style={{textAlign: 'center'}}>
        {/* <Typography
            variant="h5"
            style={{margin: 45, fontFamily: 'Montserrat'}}
            >
                Stock Prices by Market Cap
            </Typography> */}
          

        <TabContext 
          value={value}
          >
          
            <TabList
            className={classes.tablist}
            onChange={handleChange} 
            aria-label="simple tabs "
            TabIndicatorProps={{
            style: {
              backgroundColor: "#D97D54"
            }
            }}>
              <Tab label="HOSE" value="1" className={classes.tab}/>
              <Tab label="HNX" value="2" className={classes.tab}/>
              <Tab label="UPCOM" value="3" className={classes.tab}/>
            </TabList>
  
          <TabPanel value="1"><StockTable stockExchange={'hose'} user={user}/></TabPanel>
          <TabPanel value="2"><StockTable stockExchange={'hnx'} user={user}/></TabPanel>
          <TabPanel value="3"><StockTable stockExchange={'upcom'} user={user}/></TabPanel>
        </TabContext>
        
      
      
      </Container>
    
  )
}

export default StockExchange