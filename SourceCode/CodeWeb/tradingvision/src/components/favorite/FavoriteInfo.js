import React, { useState, useEffect } from "react";
import {
	TableContainer,
	Table,
	TableHead,
	TableRow,
	TableCell,
	TableBody,
	Paper,
	Container,
	TablePagination,
} from "@material-ui/core";
// import useStyles from "./style";
import DeleteIcon from "@mui/icons-material/Delete";
import FavoriteDelete from "./FavoriteDelete";
import { useNavigate } from "react-router-dom";
import { ToastContainer, toast, Slide } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import axios from 'axios';
import { DataGrid, GridToolbar,
	GridToolbarContainer,
	GridToolbarColumnsButton,
	GridToolbarFilterButton,
	GridToolbarExport,
	 } from "@mui/x-data-grid";
import { createTheme, ThemeProvider } from "@mui/material/styles";
import { makeStyles } from "@material-ui/core/styles";
import ArrowUpwardIcon from "@mui/icons-material/ArrowUpward";
import ArrowDownwardIcon from "@mui/icons-material/ArrowDownward";
import MoreVertIcon from "@mui/icons-material/MoreVert";
import {CircularProgress} from '@material-ui/core/'

// Styles
const useStyles = makeStyles({
	root: {
		"&.MuiDataGrid-root .MuiDataGrid-columnHeader:focus, &.MuiDataGrid-root .MuiDataGrid-cell:focus": {
			outline: "none",
		},
		"&.MuiDataGrid-menuIcon &.MuiDataGrid-menuIconButton 	&.MuiDataGrid-menuOpen": {
			color: "white",
		},
		"MuiTablePagination-root .css-rtrcn9-MuiTablePagination-root": {
			color: "white",
		},
	},
	loading_spinner:{
		marginTop:"20%",
		
	 },
});
const columns = [
	{
		field: "ticker",
		headerName: "Ticker",
		width: 150,
	},
	{
		field: "ceiling",
		headerName: "Ceiling",
		type: "number",
		width: 150,
	},
	{
		field: "floor",
		headerName: "Floor",
		type: "number",
		width: 150,
	},
	{
		field: "highest",
		headerName: "Highest",
		type: "number",
		width: 150,
	},
	{
		field: "lowest",
		headerName: "Lowest",
		type: "number",
		width: 150,
	},
	{
		field: "match",
		headerName: "Match",
		type: "number",
		width: 150,
	},
	{
		field: "volume",
		headerName: "Volume",
		type: "number",
		width: 150,
	},
];

// Define icons
export function SortedDescendingIcon() {
	return (
		<ArrowDownwardIcon
			className="icon"
			sx={{
				color: "white",
			}}
		/>
	);
}

export function SortedAscendingIcon() {
	return (
		<ArrowUpwardIcon
			className="icon"
			sx={{
				color: "white",
			}}
		/>
	);
}
export function MenuIcon() {
	return (
		<MoreVertIcon
			className="icon"
			sx={{
				color: "white",
			}}
		/>
	);
}


const darkTheme = createTheme({
	palette: {
		primary: {
			main: "#fff",
		},
		type: "dark",
		fontFamily: "Montserrat",
	},
});

const FavoriteInfo = (props) => {
	const classes = useStyles();
	const history = useNavigate();
	const [page, setPage] = useState(0);
	const [rowsPerPage, setRowsPerPage] = useState(10);
	// Delete modal
	const [selectedRow, setSelectedRow] = useState();
	const [openDelete, setOpenDelete] = useState(false);
	const [loading, setLoading] = useState(true)
	const handleOpenDelete = (row) => {
		setSelectedRow(row);
		setOpenDelete(true);
	};
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



	const navigatePage = (row_ticker) => {
		history(`/stocks/${row_ticker}`);
	};


	//toast + del fav 
	const [status, setStatus] = useState([])

	const deleteFavoriteStock = async(row) => {

		axios.delete(`/api/favorites/`+ row)
		.then((res) => setStatus(res.data))
	
		await toast.success("Successfully deleted from your favorites!", 
		{autoClose: 2000, 
		  transition: Slide,
		  position:"bottom-left",
		  });

		axios.get(`/api/favorites`)
		.then((res) => props.setFavorite(res.data.favorites))
	  }
	const [pageSize, setPageSize] = useState(10);
	function CustomToolbar() {
		return (
		<GridToolbarContainer>
			<GridToolbarColumnsButton />
			<GridToolbarFilterButton />
			
			<GridToolbarExport 
			csvOptions={{
				fileName: `Trading Vision-Favorite Stocks`
	
			}}/>
		</GridToolbarContainer>
		);
	}

	  const rowsStocks = props.favorites.map((favorite) => {
		return {
			companyId: favorite.CompanyId,
			ticker: favorite.Ticker,
			stockTicker: favorite.Ticker[0].Ticker,
		};
	});
	const rows = props.favorites
	.map((favorite) => {
		return {
			id: favorite._id,
			ceiling: favorite.Ticker[0].Ceiling,
			floor: favorite.Ticker[0].Floor,
			highest: favorite.Ticker[0].Highest,
			lowest: favorite.Ticker[0].Lowest,
			match: favorite.Ticker[0].Match,
			ticker: favorite.Ticker[0].Ticker,
			volume: favorite.Ticker[0].StockExchange === "hose" ? favorite.Ticker[0].Volume * 1000 : favorite.Ticker[0].Volume * 100,
		};
	});
	
	console.log(rowsStocks)

	return (
		
		<Container>
			<ThemeProvider theme={darkTheme}>
			<DataGrid
						rows={rows}
						columns={columns}
						pageSize={pageSize}
						onPageSizeChange={(newPage) => setPageSize(newPage)}
						rowsPerPageOptions={[10, 20, 50]}
						pagination
						width = '100%'
						sx={{
							color: "white",
							fontFamily: "Montserrat",
							cursor: "pointer",
							fontSize: 16,
							"& .MuiButton-root": {
								paddingBottom: 3,								
								fontFamily: "Montserrat",
							},
							"& .MuiTablePagination-root": {
								color: "white",
								fontFamily: "Montserrat",
							},
							"& .MuiTablePagination-selectIcon": {
								color: "white",
							},
							// Pagination
							"& .MuiTablePagination-selectLabel": {
								fontFamily: "Montserrat",
							},
							"& .MuiTablePagination-displayedRows": {
								fontFamily: "Montserrat",
							},							
							"& .MuiTablePagination-select": {
								fontFamily: "Montserrat",
							},
							"& .MuiInputLabel-root": {
								fontFamily: "Montserrat",
							},
							"& .MuiDataGrid-filterForm": {
								fontFamily: "Montserrat",
							},
							
						}}
						components={{
							Toolbar: CustomToolbar,
							//Pagination: CustomPagination,
							ColumnSortedDescendingIcon: SortedDescendingIcon,
							ColumnSortedAscendingIcon: SortedAscendingIcon,
							ColumnMenuIcon: MenuIcon,
						}}
						classeName={classes.root}
						initialState={{
							sorting: {
								sortModel: [{ field: "ticker", sort: "asc" }],
							},
						}}
						onRowClick={(params) =>
							{
								history(`/stocks/${params.row.ticker}`);
								
							}
						}
					/>
			</ThemeProvider>
		</Container>
	);
};

export default FavoriteInfo;
