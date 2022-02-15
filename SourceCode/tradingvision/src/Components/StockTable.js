import React, {useEffect, useState} from 'react'
import { Container, 
    createTheme, 
    TextField, 
    ThemeProvider, 
    Typography, 
    TableContainer, 
    LinearProgress,
    Table,
    TableHead,
    TableRow,
    TableCell,
    TableBody,
    makeStyles,
    Paper,
    TablePagination,
    TableSortLabel
 } from '@material-ui/core'
import { useNavigate } from 'react-router-dom';
import { TableRows } from '@mui/icons-material';



const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
    },
  });

  const useStyles = makeStyles((theme) => ({
    tablehead:{
      backgroundColor:"#131110",
    },
    tablecell:{
      color: "white",
      fontWeight: "700",
      fontFamily: "Montserrat",
    },
    row: {
      backgroundColor: "#131110",
      cursor: "pointer",
      "&:hover": {
        backgroundColor: "#36454F",
      },
      fontFamily: "Montserrat",
    },
    tableContainer: {
      maxHeight: 550,
    },
}))

function createData(ticker, ceiling, floor, highest, lowest, match, volume) {
    return { ticker, ceiling, floor, highest, lowest, match, volume };
  }
  
  const rows = [
    createData('ACB', 305, 3.7, 67, 4.3,0.4,1000),
    createData('APH', 452, 25.0, 51, 4.9,42.2,1000),
    createData('ASM', 262, 16.0, 24, 6.0,4.8,1000),
    createData('BCM', 159, 6.0, 24, 4.0,9.3,1000),
    createData('BHN', 356, 16.0, 49, 3.9,1.4,1000),
    createData('BID', 408, 3.2, 87, 6.5,1.4,1000),
    createData('BMP', 237, 9.0, 37,1.4, 4.3,1000),
    createData('BVH', 375, 0.0, 94, 0.0,1.4,1000),
    createData('CII', 518, 26.0, 65, 7.0,4.8,1000),
    createData('DCM', 392, 0.2, 98, 0.0,4.8,1000),
    createData('DGC', 318, 0, 81, 2.0,4.8,1000),
    createData('DGW', 360, 19.0, 9,4.8, 37.0,1000),
    createData('DHC', 437, 18.0, 63, 4.0,4.8,1000),
    createData('FLC', 437, 18.0, 63, 4.0,4.8,1000),
    createData('FPT', 437, 18.0, 63, 4.0,4.8,1000),
    createData('X20', 437, 18.0, 63, 4.0,4.8,1000),
  ]; 
  

const StockTable = () => {
    const [stocks, setStocks] = useState([]);
    const [search, setSearch] = useState("")
    const [loading, setLoading] = useState(false)
    const [page, setPage] = useState(2)
    const [rowsPerPage, setRowsPerPage] = useState(10);
    const history = useNavigate()
    const classes = useStyles()
   

    const handleSearch = () => {
        return stocks.filter(
          (stock) =>
            stock.ticker.toLowerCase().includes(search) 
            // stock.symbol.toLowerCase().includes(search)
        );
      };
    const handleChangePage = (event, newPage) => {
    setPage(newPage);
    };

    const handleChangeRowsPerPage = (event) => {
      setRowsPerPage(parseInt(event.target.value, 10));
      setPage(0);
    };



    return (
    <ThemeProvider theme={darkTheme}>
        <Container style={{textAlign: "center"}}>
            
            <TableContainer 
            className={classes.tableContainer}
            component={Paper}>
                {
                    loading? (
                        <LinearProgress style={{backgroundColor:"primary"}}/>
                    ):(
                        <Table>
                            <TableHead  className={classes.tablehead}
                            rowCount={rows.length}>
                                <TableRow>
                                {["TICKER", "CEILING", "FLOOR", "HIGHEST","LOWEST", "MATCH" ,"VOLUME"].map((head) => (
                                    <TableCell
                                    className={classes.tablecell}
                                    key={head}
                                    align={head === "TICKER" ? "" : "center"}
                                    >
                                    {head}
                                    </TableCell>
                                ))}
                                </TableRow>
                            </TableHead>
                    
                            <TableBody>
                                {rows
                                .slice(page * rowsPerPage, page * rowsPerPage + rowsPerPage)
                                .map((row)=> (
                                    <TableRow
                                    onClick={() => history(`/stocks/${row.ticker}`)}
                                    className ={classes.row}
                                    key={row.ticker}>
                                    <TableCell component='th' scope='row'
                                        style={{
                                            display:'flex',
                                            gap:10,
                                            color:'white',
                                            fontWeight: 'bold',
                                        }}> {row.ticker}
                                    </TableCell>
                                    <TableCell align="center">{row.ceiling}</TableCell>
                                    <TableCell align="center">{row.floor}</TableCell>
                                    <TableCell align="center">{row.highest}</TableCell>
                                    <TableCell align="center">{row.lowest}</TableCell>
                                    <TableCell align="center">{row.match}</TableCell>
                                    <TableCell align="center">{row.volume}</TableCell>
                                </TableRow>
                                ))}
                            </TableBody>
                        </Table>
                    )
                }
            </TableContainer>
            {/* <TablePagination>
              style={{
                padding: 20, 
                width: "100%",
                display: "flex",
                justifyContent: "center",
              }}
              count={(handleSearch()?.length/10).toFixed}
            </TablePagination> */}
            <TablePagination
              rowsPerPageOptions={[10,25,100]}
              component="div"
              count={rows.length}
              page={page}
              onPageChange={handleChangePage}
              rowsPerPage={rowsPerPage}
              onRowsPerPageChange={handleChangeRowsPerPage}
            />
        </Container>
    </ThemeProvider>
  )
}

export default StockTable