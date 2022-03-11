import React, {useState, useEffect} from 'react'
import Tab from '@material-ui/core/Tab';
import TabContext from '@material-ui/lab/TabContext';
import TabList from '@material-ui/lab/TabList';
import TabPanel from '@material-ui/lab/TabPanel';
import Test from '../stocktable/test';
import { Container, 
  createTheme, 
  TextField, 
  ThemeProvider,
  Typography, 
} from '@material-ui/core'
import useStyles from './style'
import axios from 'axios'

const darkTheme = createTheme({
  palette: {
    primary: {
      main: "#fff",
    },
    type: "dark",
  },
});


const StockExchange = () => {
  const classes = useStyles()
  const [value, setValue] = React.useState('1');
  const [search,setSearch] = React.useState('');
  const [stocks, setStocks] = useState([]);

  const handleChange = (event, newValue) => {
    setValue(newValue);
  };

  useEffect(() => {
    componentDidMount()
  },[])

  const componentDidMount = async() =>{
     axios.get("/api/stocks")
     .then((response)=>{
        setStocks(response.data.stocks);
     })
  }

  const rows = stocks
  .map((stock) => {
    console.log(stock);
      return {
        id: stock._id,
        ticker: stock.Ticker,
        
      };
    
  })

  const handleSearch = () => {
    return rows.filter(
      (row) =>
      row.ticker.toLowerCase().includes(search) ||
      row.industry.toLowerCase().includes(search) ||
      row.ticker.includes(search) ||
      row.industry.includes(search) 
    );
  };


  return (
    
      <Container style={{textAlign: 'center'}}>
        <Typography
            variant="h4"
            style={{margin: 18, fontFamily: 'Montserrat'}}
            >
                Stock Prices by Market Cap
            </Typography>
            <ThemeProvider theme={darkTheme}>
              <TextField 
                  label={<Typography className={classes.label}>Search for a Stock Ticker...</Typography>}
                  variant="outlined"
                  className={classes.text}
                  style={{fontFamily: "Montserrat"}}
                  onChange={(e) => setSearch(e.target.value)}
                  >
              </TextField>
            </ThemeProvider>

        <TabContext value={value}>
          
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
  
          <TabPanel value="1"><Test stockExchange={'hose'} handleSearch={handleSearch}/></TabPanel>
          <TabPanel value="2"><Test stockExchange={'hnx'} handleSearch={handleSearch}/></TabPanel>
          <TabPanel value="3"><Test stockExchange={'upcom'} handleSearch={handleSearch}/></TabPanel>
        </TabContext>
        
      
      
      </Container>
    
  )
}

export default StockExchange