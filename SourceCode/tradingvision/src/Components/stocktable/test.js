import * as React from 'react';
import {
    DataGrid,
    GridToolbarContainer,
    GridToolbarColumnsButton,
    GridToolbarFilterButton,
    GridToolbarDensitySelector,
    GridToolbarExport,
} from '@mui/x-data-grid';
import { 
    createTheme,
    ThemeProvider,
    } from '@mui/material/styles';
import { makeStyles } from "@mui/styles";
const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
    },
  });

function CustomToolbar() {
  return (
    <GridToolbarContainer>
      <GridToolbarColumnsButton />
      <GridToolbarFilterButton />
      <GridToolbarDensitySelector />
      <GridToolbarExport />
    </GridToolbarContainer>
  );
}
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
    { id: 3, ticker: 'BVH', ceiling: 375, floor: 0.0, highest: 94, lowest: 0.0, match: 1.4, volume: 1000 },
    { id: 3, ticker: 'DGC', ceiling: 318, floor: 0.0, highest: 81, lowest: 2.0, match: 4.8, volume: 1500 },

    { id: 4, ticker: 'BCM', ceiling: 159, floor: 6.0, highest: 24, lowest: 4.0,match: 9.3,volume: 1200},
    { id: 5, ticker: 'BHN', ceiling: 356, floor: 16.0, highest: 49, lowest: 3.9,match: 1.4,volume: 700},
    
  ]; 


  export default function DataGridDemo() {
    return (
        <ThemeProvider theme={darkTheme}>
        <div style={{ height: 400, width: '100%'}}>

        <DataGrid
            rows={rows}
            columns={columns}
            
            components={{
            Toolbar: CustomToolbar,
            color: 'white',
            }}
            initialState={{
                sorting: {
                  sortModel: [{ field: 'ticker', sort: 'asc' }],
                },
              }}
            sx={{
                color: 'white',
                font: "Monsterrat",
                display:'flex',
                fontWeight: 'bold',
                border: null,
                }
            }
        />
        </div>
        </ThemeProvider>
    );
}
