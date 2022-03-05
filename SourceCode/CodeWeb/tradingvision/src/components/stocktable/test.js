import React, {useState, useEffect} from 'react';
import {
    DataGrid,
    GridToolbar,
    gridPageCountSelector,
    gridPageSelector,
    useGridApiContext,
    useGridSelector,
} from '@mui/x-data-grid';
import { 
    createTheme,
    ThemeProvider,
    } from '@mui/material/styles';
import {useNavigate} from 'react-router-dom';
import TablePagination from '@mui/material/TablePagination';
import {  makeStyles } from '@material-ui/core/styles';
import ArrowUpwardIcon from '@mui/icons-material/ArrowUpward';
import ArrowDownwardIcon from '@mui/icons-material/ArrowDownward';
import MoreVertIcon from '@mui/icons-material/MoreVert';
import StockTableService from '../../services/stock'
 
// Styles
const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
    },
  });
const useStyles = makeStyles({
  root: {
    '&.MuiDataGrid-root .MuiDataGrid-columnHeader:focus, &.MuiDataGrid-root .MuiDataGrid-cell:focus': {
        outline: 'none',
    },
    '&.MuiDataGrid-menuIcon &.MuiDataGrid-menuIconButton 	&.MuiDataGrid-menuOpen': {
      color: 'white',
    },
  }
});
const columns = [
  {
    field: 'ticker',
    headerName: 'Ticker',
    width: 150,

  },
    {
      field: 'ceiling',
      headerName: 'Ceiling',
      type: 'number',
      width: 150,

    },
    {
        field: 'floor',
        headerName: 'Floor',
        type: 'number',
        width: 150,
        
      },
    {
      field: 'highest',
      headerName: 'Highest',
      type: 'number',
      width: 150,
     
    },
    {
      field: 'lowest',
      headerName: 'Lowest',
      type: 'number',
      width: 150,
      
    },
    {
      field: 'match',
      headerName: 'Match',
      type: 'number',
      width: 150,
      
    },
    {
      field: 'volume',
      headerName: 'Volume',
      type: 'number',
      width: 150,
    },
  ];

  const rows = [
    { id: 1, ticker: 'ACB', ceiling: 305, floor: 3.7, highest: 67, lowest: 4.3, match: 0.4, volume: 2300 },
    { id: 2, ticker: 'ASM', ceiling: 262, floor: 16.0, highest: 24, lowest: 6.0, match: 4.8, volume: 900 },
    { id: 3, ticker: 'BVH', ceiling: 375, floor: 2.0, highest: 94, lowest: 0.0, match: 1.4, volume: 1000 },
    { id: 4, ticker: 'DGC', ceiling: 318, floor: 0.0, highest: 81, lowest: 2.0, match: 4.8, volume: 1500 },
    { id: 5, ticker: 'BCM', ceiling: 159, floor: 6.0, highest: 24, lowest: 4.0,match: 9.3,volume: 1200},
    { id: 6, ticker: 'BHN', ceiling: 356, floor: 16.0, highest: 49, lowest: 3.9,match: 1.4,volume: 700},
    { id: 7, ticker: 'VNM', ceiling: 318, floor: 0.0, highest: 81, lowest: 2.0, match: 4.8, volume: 1500 },
    { id: 8, ticker: 'APM', ceiling: 159, floor: 6.0, highest: 24, lowest: 4.0,match: 9.3,volume: 1200},
    { id: 9, ticker: 'HCM', ceiling: 356, floor: 16.0, highest: 49, lowest: 3.9,match: 1.4,volume: 700},
    { id: 10, ticker: 'X20', ceiling: 318, floor: 0.0, highest: 81, lowest: 2.0, match: 4.8, volume: 1500 },
    { id: 11, ticker: 'VRE', ceiling: 159, floor: 6.0, highest: 24, lowest: 4.0,match: 9.3,volume: 1200},
    { id: 12, ticker: 'VIN', ceiling: 356, floor: 16.0, highest: 49, lowest: 3.9,match: 1.4,volume: 700},
  
  ]; 

function CustomPagination() {
    const [page, setPage] = React.useState(0);
    const [rowsPerPage, setRowsPerPage] = React.useState(10);

    const handleChangePage = (event, newPage) => {
      setPage(newPage);
    };

    const handleChangeRowsPerPage = (event) => {
      setRowsPerPage(parseInt(event.target.value, 10));
      setPage(0);
    };

    return (
      <TablePagination
        component="div"
        count = {300}
        page={page}
        onPageChange={handleChangePage}
        rowsPerPage={rowsPerPage}
        onRowsPerPageChange={handleChangeRowsPerPage}
        sx = {{
          color:'white',
        }}
      />
    );
  }
// Define icons
export function SortedDescendingIcon() {

  return <ArrowDownwardIcon
  className="icon"
  sx = {{
    color:'white',
  }}
  />;
}

export function SortedAscendingIcon() {
  return <ArrowUpwardIcon className="icon" 
  sx = {{
    color:'white',
  }}/>;
}
export function MenuIcon() {
  return <MoreVertIcon className="icon"
  sx = {{
    color:'white',
  }}/>;
}
// Datagirid
const DataGridDemo = () => {
    const history = useNavigate()
    const classes = useStyles();
    
    const [stocks, setStock] = useState([]);

    useEffect(()=>{
      retrieveStocks();
    },[]);
    
    const retrieveStocks = () => {
      StockTableService.get("hnx")
        .then(response =>{
          console.log(response.data);
          setStock(response.data.stocks);

        })
        .catch(error =>{
          console.log(error);
        })
    };

    // const rows = stocks.map((stock) => {
    //   return {
    //     id: stock.Ticker,
    //     ceiling: stock.Ceiling,
    //     floor: stock.Floor,
    //     highest: stock.Highest,
    //     lowest: stock.Lowest,
    //     match: stock.Match,
    //     ticker: stock.Ticker,
    //     volume: stock.Volume,
    //   };
    // })
    
    // const rowlength = rows.length;
    // console.log(rowlength);
    return (
      <ThemeProvider theme={darkTheme}>
        <div style={{ height: 600, width: '100%'}}>
        <DataGrid
          
            rows={rows}
            columns={columns}
            components={{
            Toolbar: GridToolbar,
            Pagination: CustomPagination,
            ColumnSortedDescendingIcon: SortedDescendingIcon,
            ColumnSortedAscendingIcon: SortedAscendingIcon,
            ColumnMenuIcon: MenuIcon,
            }}
            classeName = {classes.root}
            initialState={{
                sorting: {
                  sortModel: [{ field: 'ticker', sort: 'asc' }],
                },
              }}
            
            sx={{
                color: 'white',
                fontFamily: 'Montserrat',
                cursor: "pointer",
                fontSize: 16,
                }}
            
            onRowClick={(params) => 
              history(`/stocks/${params.row.ticker}`)
            }
            
        />
  
        </div>
    </ThemeProvider>
    );
    
}
export default DataGridDemo