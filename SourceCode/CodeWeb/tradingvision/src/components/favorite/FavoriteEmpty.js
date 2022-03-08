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
  import { useNavigate } from 'react-router-dom';
  import useStyles from './style'
  import EditIcon from '@mui/icons-material/Edit';
  import DeleteIcon from '@mui/icons-material/Delete';
  import { Typography } from '@mui/material';


  const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
      fontFamily: "Montserrat",
    },
  });

  const rows = [
    { id: 1, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000},
    { id: 2, ticker:"VNM", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000},
    { id: 3, ticker:"DNG", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000},
    { id: 4, ticker:"B10", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000},
    { id: 5, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000},
    { id: 6, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000},
    { id: 7, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000},
    { id: 8, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000},
    { id: 9, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000},
    { id: 10, ticker:"ACB", ceiling: 10000, floor: 20000, highest:250000, lowest:300000, volume: 18000},

  ]; 

const FavoriteInfo = () => {
    const classes = useStyles()
    const [loading, setLoading] = useState(false)
    const [page, setPage] = useState(0)
    const [rowsPerPage, setRowsPerPage] = useState(10);


    const handleChangePage = (event, newPage) => {
        setPage(newPage);
      };
    
    const handleChangeRowsPerPage = (event) => {
    setRowsPerPage(parseInt(event.target.value, 10));
    setPage(0);
    };

  return (
      <Container>
    <ThemeProvider theme={darkTheme}>
     
      <TableContainer 
            className={classes.tableContainer}
            component={Paper}>
                {
                    loading ? (
                        <LinearProgress style={{backgroundColor:"primary"}}/>
                    ):(
                        <Table stickyHeader aria-label="sticky table">
                            <TableHead  className={classes.tablehead}
                            rowCount={rows.length}>
                                <TableRow>
                                {["TICKER", "CEILING", "FLOOR","HIGHEST", "LOWEST", "VOLUME", "ACTION"].map((head) => (
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
                    
                        
                            
                        </Table>
                    )
                }
                
            </TableContainer>
            <Typography 
        variant="h6" 
        component="h6"
        align="center" >
        There is nothing here.<br/> 
        Please add your favorite stock
        
        
        <br/><br/><br/>
        <br/><br/><br/>
        </Typography>
            
    </ThemeProvider>
    </Container>
  )
}

export default FavoriteInfo