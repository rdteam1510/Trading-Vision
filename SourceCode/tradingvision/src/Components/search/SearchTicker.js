import React, {useState} from 'react'
import useStyles from './style'
import { Container, 
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
  TablePagination,
} from '@material-ui/core'
import { useNavigate } from 'react-router-dom';


const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
      fontFamily: "Montserrat",
    },
  });

  // function createData(ticker, description, industry) {
  //   return { ticker, description, industry};
  // }

// const rows =[
//   createData("ACB","Asia Commercial Joint Stock Bank","Financials"),
//   createData("BID","JOINT STOCK COMMERCIAL BANK FOR INVESTMENT AND DEVELOPMENT OF VIETNAM","Financials"),
//   createData("ACB","Asia Commercial Joint Stock Bank","Financials"),
//   createData("BID","JOINT STOCK COMMERCIAL BANK FOR INVESTMENT AND DEVELOPMENT OF VIETNAM","Financials"),
//   createData("ACB","Asia Commercial Joint Stock Bank","Financials"),
//   createData("BID","JOINT STOCK COMMERCIAL BANK FOR INVESTMENT AND DEVELOPMENT OF VIETNAM","Financials"),
// ]
const rows = [
  { id: 1, ticker: 'ACB', description: "Asia Commercial Joint Stock Bank", industry:"Financials"},
  { id: 2, ticker: 'ACB', description: "Asia Commercial Joint Stock Bank", industry:"Financials"},  
  { id: 3, ticker: 'BID', description: "JOINT STOCK COMMERCIAL BANK FOR INVESTMENT AND DEVELOPMENT OF VIETNAM", industry:"Financials"},

]; 
const SearchTicker = () => {
    const classes = useStyles()
    const [loading, setLoading] = useState(false)
    const history = useNavigate()
    const [test, setTest] = React.useState(false);
  const handleOpen = () => setTest(true);
  const handleClosed = () => setTest(false);

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
                                    onClick={() => history(`/stocks/${row.ticker}`)}
                                    className ={classes.row}
                                    key={row.ticker}>
                                    <TableCell component='th' scope='row'
                                        style={{
                                          fontWeight: 'bold',
                                        }}
                                        className={classes.cell}> {row.ticker}
                                    </TableCell>
                                    <TableCell align="left" className={classes.cell}>{row.description}</TableCell>
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