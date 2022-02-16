import React, { useState } from 'react'
import Tab from '@material-ui/core/Tab';
import TabContext from '@material-ui/lab/TabContext';
import TabList from '@material-ui/lab/TabList';
import TabPanel from '@material-ui/lab/TabPanel';
import StockTable from '../stocktable/StockTable';
import { Container, 
  createTheme, 
  TextField, 
  ThemeProvider,
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



const StockExchange = () => {
  const classes = useStyles()
  const [value, setValue] = React.useState('1');
  const [search, setSearch] = useState("")
  const handleChange = (event, newValue) => {
    setValue(newValue);
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
                  label="Search for a Stock Ticker..."
                  variant="outlined"
                  style={{marginBottom:20, width:"100%"}}
                  onChange={(e) => setSearch(e.target.value)}>
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
              <Tab label="HOSE" value="1"/>
              <Tab label="HNX" value="2" />
              <Tab label="UPCOM" value="3"/>
            </TabList>
  
          <TabPanel value="1"><StockTable/></TabPanel>
          <TabPanel value="2"><StockTable/></TabPanel>
          <TabPanel value="3"><StockTable/></TabPanel>
        </TabContext>
        
      
      
      </Container>
    
  )
}

export default StockExchange