import axios from 'axios'
import { Container,
        InputBase,
        ThemeProvider,
        createTheme,
        Tab,} from '@material-ui/core'
import React, {useState, useEffect} from 'react'
import useStyles from './style'
import SearchIcon from '@mui/icons-material/Search';
import { TabContext, TabList, TabPanel } from '@material-ui/lab';
import SearchTicker from './SearchTicker';


const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
      fontFamily: "Montserrat",
    },
  });


const SearchPopup = () => {
    const classes = useStyles()
    const [test, setTest] = React.useState(false);
    const handleOpen = () => setTest(true);
    const handleClosed = () => setTest(false);
    const [value, setValue] = React.useState('1');
    const handleChange = (event, newValue) => {
        setValue(newValue);
      };
    const [search,setSearch] = React.useState('');
    

    const [companies, setCompanies] = useState([]);

    // 
    useEffect(() => {
      componentDidMount()
    },[])

    const componentDidMount = async() =>{
       axios.get("/api/companyinfo")
       .then((response)=>{
          setCompanies(response.data.companyinfo);
       })
    }

    const rows = companies
    .map((company) => {
      console.log(company);
        return {
          id: company._id,
          ticker: company.Ticker,
          companyName: company.CompanyName,
          industry: company.Industry,
          
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
    <ThemeProvider theme={darkTheme}>
    <Container>
        <div className={classes.search}>
                <div className={classes.searchIcon}>
                    <SearchIcon />
                    </div>
                <InputBase
                    placeholder="Search…"
                    classes={{
                        root: classes.inputRoot,
                        input: classes.inputInput,
                    }}
                    inputProps={{ 'aria-label': 'search' }}
                    onClick={handleOpen}
                    style={{fontFamily: "Montserrat"}}
                    onChange={(e) => setSearch(e.target.value)}/>
                            
        </div>
        <div className={classes.table}>
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

            <TabPanel value="1">
               <SearchTicker stockExchange={'hose'} handleSearch={handleSearch}/>
            </TabPanel>
            <TabPanel value="2">
                <SearchTicker stockExchange={'hnx'} handleSearch={handleSearch}/>
              </TabPanel>
            <TabPanel value="3">
                <SearchTicker stockExchange={'upcom'} handleSearch={handleSearch}/>
            </TabPanel>
        </TabContext>
        </div>
    </Container>
    </ThemeProvider>
  )
}

export default SearchPopup