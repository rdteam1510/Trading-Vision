import React, {useState, useEffect} from 'react'
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
    Container,
    TablePagination,

  } from '@material-ui/core'
  import useStyles from './style'
  import DeleteIcon from '@mui/icons-material/Delete';
  import FavoriteDelete from './FavoriteDelete';
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

  // const rows = [
  //   { id: 1, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000, match:2345},
  //   { id: 2, ticker:"VNM", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000, match:2345},
  //   { id: 3, ticker:"DNG", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000, match:2345},
  //   { id: 4, ticker:"B10", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000, match:2345},
  //   { id: 5, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000, match:2345},
  //   { id: 6, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000, match:2345},
  //   { id: 7, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000, match:2345},
  //   { id: 8, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000, match:2345},
  //   { id: 9, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000, match:2345},
  //   { id: 10, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000, match:2345},

  // ]; 

const FavoriteInfo = ({favorites}) => {
    const classes = useStyles()
    const history = useNavigate();
    const [page, setPage] = useState(0);
    const [rowsPerPage, setRowsPerPage] = useState(10);
    // Delete modal
    const [selectedRow, setSelectedRow] = useState();
    const [openDelete, setOpenDelete] = useState(false);
    const handleOpenDelete = (row) => {
      setSelectedRow(row);
      setOpenDelete(true);
    }
    const handleCloseDelete = () => {
      setOpenDelete(false);
    };

    const handleChangePage = (event, newPage) => {
        setPage(newPage);
      };
    
    const handleChangeRowsPerPage = (event) => {
    setRowsPerPage(parseInt(event.target.value, 10));
    setPage(0);
    };
    
    const rows = favorites.map((favorite) =>{
      return {
        companyId: favorite.CompanyId,
        ticker: favorite.Ticker,
        stockTicker: favorite.Ticker[0].Ticker,
      }
    })
    
    const navigatePage = (row_ticker) => {
      history(`/stocks/${row_ticker}`);
    };
    const refreshPage = () => {
      window.location.reload();
    };
  return (
      <Container>
    <ThemeProvider theme={darkTheme}>
     
      <TableContainer 
            className={classes.tableContainer}
            component={Paper}>
                        <Table stickyHeader aria-label="sticky table">
                            <TableHead  className={classes.tablehead}
                            rowCount={rows.length}>
                                <TableRow>
                                {["TICKER", "CEILING", "FLOOR","HIGHEST", "LOWEST", "MATCH", "VOLUME", "ACTION"].map((head) => (
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
                                .slice(page * rowsPerPage, page * rowsPerPage + rowsPerPage)
                                .map((row)=> (
                                    <TableRow
                                    className ={classes.row}
                                    key={row.ticker[0].Ticker}>
                                    <TableCell component='th' scope='row'
                                        style={{
                                          fontWeight: 'bold',
                                        }}
                                        className={classes.cell}
                                        onClick={() => {
                                          navigatePage(row.stockTicker);
                                        }}> 
                                        {row.ticker[0].Ticker}
                                    </TableCell>
                                   
                                    <TableCell align="left" className={classes.cell} 
                                      onClick={() => {
                                          navigatePage(row.stockTicker);
                                        }}>
                                        {row.ticker[0].Ceiling}
                                    </TableCell>
                                    <TableCell align="left" className={classes.cell}
                                        onClick={() => {
                                              navigatePage(row.stockTicker);
                                            }}>
                                        {row.ticker[0].Floor}
                                    </TableCell>
                                    <TableCell align="left" className={classes.cell}
                                      onClick={() => {
                                          navigatePage(row.stockTicker);
                                        }}>
                                        {row.ticker[0].Highest}
                                    </TableCell>
                                    <TableCell align="left" className={classes.cell}
                                      onClick={() => {
                                            navigatePage(row.stockTicker);
                                          }}>
                                          {row.ticker[0].Lowest}
                                      </TableCell>
                                    <TableCell align="left" className={classes.cell}
                                      onClick={() => {
                                            navigatePage(row.stockTicker);
                                          }}>
                                        {row.ticker[0].Volume}
                                      </TableCell>                                    
                                    <TableCell align="left" className={classes.cell}
                                      onClick={() => {
                                            navigatePage(row.stockTicker);
                                          }}>
                                          {row.ticker[0].Match}
                                    </TableCell> 
                                    <TableCell align="left" className={classes.cell}>
                                      <DeleteIcon 
                                        style={{marginLeft:"10%"}}
                                        onClick = {() => handleOpenDelete(row)}
                                        />
                                    </TableCell>
                                    <FavoriteDelete 
                                  open = {openDelete} 
                                  onClose = {handleCloseDelete} 
                                  rowID={(selectedRow || {}).companyId}
                                  ticker = {(selectedRow || {}).stockTicker}

                                />      
                                </TableRow>
                                ))}
                            </TableBody>
                            
                        </Table>
                  
                <TablePagination
                className={classes.pagination}
                rowsPerPageOptions={[5,10,25,100]}
                component="div"
                count={rows.length}
                page={page}
                onPageChange={handleChangePage}
                rowsPerPage={rowsPerPage}
                onRowsPerPageChange={handleChangeRowsPerPage}
                />
            </TableContainer>
            
    </ThemeProvider>
    </Container>
  )
}

export default FavoriteInfo