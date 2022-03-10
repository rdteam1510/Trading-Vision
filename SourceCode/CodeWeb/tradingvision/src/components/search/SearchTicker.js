import React, {useState, useEffect} from 'react'
import useStyles from './style'
import {  
  createTheme, 
  ThemeProvider, 
  TableContainer, 
  LinearProgress,
  Table,
  TableHead,
  TableRow,
  TableCell,
  TableBody,
  Paper,
} from '@material-ui/core'
import { useNavigate } from 'react-router-dom';
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

// const rows = [
//   { id: 1, ticker: 'ACB', companyName: "Asia Commercial Joint Stock Bank", industry:"Financials"},
//   { id: 2, ticker: 'ACB', companyName: "Asia Commercial Joint Stock Bank", industry:"Financials"},  
//   { id: 3, ticker: 'BID', companyName: "JOINT STOCK COMMERCIAL BANK FOR INVESTMENT AND DEVELOPMENT OF VIETNAM", industry:"Financials"},

// ]; 
const SearchTicker = ({stockExchange}) => {
    const classes = useStyles()
    const [loading, setLoading] = useState(false)
    const history = useNavigate()

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
    .filter((company) => company.StockExchange === stockExchange)
    .map((company) => {
      console.log(company);
        return {
          id: company._id,
          ticker: company.Ticker,
          companyName: company.CompanyName,
          industry: company.Industry,
          
        };
      
    })


  const navigatePage = (row_ticker) =>{
    history(`/stocks/${row_ticker}`)
  }
  const refreshPage = () => {
    window.location.reload();
  }
  return (
    <ThemeProvider theme={darkTheme}>
      <TableContainer 
            className={classes.tableContainer}
            component={Paper}>
                {
                    loading? (
                        <LinearProgress style={{backgroundColor:"primary"}}/>
                    ):(
                        <Table stickyHeader aria-label="sticky table">
                            <TableHead  className={classes.tablehead}
                            rowCount={rows.length}>
                                <TableRow>
                                {["TICKER", "DESCRIPTION", "INDUSTRY"].map((head) => (
                                    <TableCell
                                    className={classes.tablecell}
                                    key={head}
                                    align={head === "TICKER" ? "" : "left"}
                                    >
                                    {head}
                                    </TableCell>
                                ))}
                                </TableRow>
                            </TableHead>
                    
                            <TableBody>
                                {rows
                                .map((row)=> (
                                    <TableRow
                                    onClick={() => {navigatePage(row.ticker); refreshPage();}}
                                    className ={classes.row}
                                    key={row.ticker}>
                                    <TableCell component='th' scope='row'
                                        style={{
                                          fontWeight: 'bold',
                                        }}
                                        className={classes.cell}> {row.ticker}
                                    </TableCell>
                                    <TableCell align="left" className={classes.cell}>{row.companyName}</TableCell>
                                    <TableCell align="left" className={classes.cell}>{row.industry}</TableCell>
                                    
                                </TableRow>
                                ))}
                            </TableBody>
                        </Table>
                    )
                }
            </TableContainer>
    </ThemeProvider>
  )
}

export default SearchTicker