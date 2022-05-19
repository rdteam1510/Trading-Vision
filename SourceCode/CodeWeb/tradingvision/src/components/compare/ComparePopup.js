import { Container,
        InputBase,
        ThemeProvider,
        createTheme,
        CircularProgress,
} from '@material-ui/core'
import React, {useState, useEffect} from 'react'
import useStyles from './style'
import SearchIcon from '@mui/icons-material/Search';
import SearchTicker from './SearchTicker';
import axios from 'axios'

const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
      fontFamily: "Montserrat",
    },
  });

const ComparePopup = (props) => {
    const classes = useStyles()


    const {selectedID, setSelectedID,  myRef, executeScroll, handleSelection, ticker, handleClosed} = props;
    const [search,setSearch] = useState('');
    const [companies, setCompanies] = useState([]);
    const [loading, setLoading] = useState(false)
  
    
    // Get company info
    useEffect(() => {
      componentDidMount()
    },[])

    const componentDidMount = async() =>{
      setLoading(true)
       axios.get("/api/companyinfo")
       .then((response)=>{
          setCompanies(response.data.companyinfo);
          setLoading(false)
       })
    }

    const rows = companies
    .map((company) => {
        return {
          id: company._id,
          ticker: company.Ticker,
          companyName: company.CompanyName,
          industry: company.Industry,
          stockExchange: company.StockExchange,
        };
      
    })

    const handleSearch = (rows) => {
      return rows.filter(
        (row) =>
        row.ticker.toLowerCase().includes(search) ||
        row.industry.toLowerCase().includes(search) ||
        row.ticker.includes(search) ||
        row.industry.includes(search) ||
        row.stockExchange.toLowerCase().includes(search) ||
        row.stockExchange.includes(search) 
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
                    inputRef={input => input && input.focus()}
                    
                    style={{fontFamily: "Montserrat", width:"100%"}}
                    onChange={(e) => setSearch(e.target.value)}/>
                            
        </div>
        <div className={classes.table}>
         {           
           loading? (
                      <div className={classes.loading_spinner}>
                        <CircularProgress style={{ backgroundColor: "primary" }}/>
                      </div>
                    ):(
                      <SearchTicker 
                        handleSearch={handleSearch}
                        RowID = {selectedID} onSelectRow = {setSelectedID}
                        myRef = {myRef}
                        handleSelection = {handleSelection} rows={rows}
                        executeScroll={executeScroll}
                        ticker = {ticker}
                        handleClosed = {handleClosed}
                        />
                    )}
         
        </div>
    </Container>
    </ThemeProvider>
  )
}

export default ComparePopup