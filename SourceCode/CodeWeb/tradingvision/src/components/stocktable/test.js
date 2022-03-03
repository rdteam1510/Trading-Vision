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
        count = "100"
        page={page}
        onPageChange={handleChangePage}
        rowsPerPage={rowsPerPage}
        onRowsPerPageChange={handleChangeRowsPerPage}
        sx = {{
          color:'white'
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
      StockTableService.getAll()
        .then(response =>{
          console.log(response.data);
          setStock(response.data.stocks);

        })
        .catch(error =>{
          console.log(error);
        })
    };

    const rows = stocks.map((stock) => {
      return {
        id: stock._id,
        ceiling: stock.Ceiling,
        floor: stock.Floor,
        highest: stock.Highest,
        lowest: stock.Lowest,
        match: stock.Match,
        ticker: stock.Ticker,
        volume: stock.Volume,
      };
    })
    console.log(rows);
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
                fontSize: 18,
                }}
            
            onRowClick={(params) => 
              history(`/stocks/${params.rows.ticker}`)
            }
        />
         
        </div>
    </ThemeProvider>
    );
    
}
export default DataGridDemo