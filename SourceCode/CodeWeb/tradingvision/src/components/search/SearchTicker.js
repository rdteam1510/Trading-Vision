import React, { useState, useEffect } from "react";
import useStyles from "./style";
import {
	createTheme,
	ThemeProvider,
	TableContainer,
	CircularProgress,
	Table,
	TableHead,
	TableRow,
	TableCell,
	TableBody,
	Paper,
} from "@material-ui/core";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import { Container } from "@mui/material";

const darkTheme = createTheme({
	palette: {
		primary: {
			main: "#fff",
		},
		type: "dark",
		fontFamily: "Montserrat",
	},
});


const SearchTicker = ({ stockExchange, handleSearch }) => {
	const classes = useStyles();
	const [loading, setLoading] = useState(false);
	const history = useNavigate();

	const [companies, setCompanies] = useState([]);
	
	//
	useEffect(() => {
		componentDidMount(stockExchange);
	}, [stockExchange]);

	const componentDidMount = async (stockExchange) => {
		setLoading(true);
		axios.get(`/api/companyinfo?stockexchange=${stockExchange}`).then((response) => {
			setCompanies(response.data.companyinfo);
			setLoading(false);
		});
	};

	const rows = companies
		.map((company) => {
			return {
				id: company._id,
				ticker: company.Ticker,
				companyName: company.CompanyName,
				industry: company.Industry,
				stockExchange: company.StockExchange,
			};
		});

	const navigatePage = (row_ticker) => {
		history(`/stocks/${row_ticker}`);
	};
	const refreshPage = () => {
		window.location.reload();
	};
	return (
		<ThemeProvider theme={darkTheme}>
			
				{loading ? (
					<div className={classes.loading_spinner}>
						<CircularProgress style={{ backgroundColor: "primary" }}/>
					</div>
				) : (
					<TableContainer
						className={classes.tableContainer}
						component={Paper}
					>
					<Table stickyHeader aria-label="sticky table">
						<TableHead
							className={classes.tablehead}
							rowCount={rows.length}
						>
							<TableRow>
								{["TICKER", "DESCRIPTION", "INDUSTRY", "STOCK EXCHANGE"].map(
									(head) => (
										<TableCell
											className={classes.tablecell}
											key={head}
											align={
												head === "TICKER" ? "" : "left"
											}
										>
											{head}
										</TableCell>
									)
								)}
							</TableRow>
						</TableHead>

						<TableBody>
							{handleSearch(rows).map((row) => (
								<TableRow
									onClick={() => {
										
										navigatePage(row.ticker);
										refreshPage();
									}}
									className={classes.row}
									key={row.ticker}
								>
									<TableCell
										component="th"
										scope="row"
										style={{
											fontWeight: "bold",
										}}
										className={classes.cell}
									>
										{" "}
										{row.ticker}
									</TableCell>
									<TableCell
										align="left"
										className={classes.cell}
									>
										{row.companyName}
									</TableCell>
									<TableCell
										align="left"
										className={classes.cell}
									>
										{row.industry}
									</TableCell>
									<TableCell
										align="left"
										className={classes.cell}
									>
										{row.stockExchange}
									</TableCell>
								</TableRow>
							))}
						</TableBody>
					</Table>
					</TableContainer>
				)}
			
		</ThemeProvider>
	);
};

export default SearchTicker;
