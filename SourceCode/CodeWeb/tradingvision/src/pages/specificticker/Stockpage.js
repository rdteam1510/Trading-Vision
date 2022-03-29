import React, { useState, useEffect, useRef } from "react";
import useStyles from "./style";
import {
	Container,
	Typography,
	Button,
	Checkbox,
	IconButton,
	CircularProgress,
} from "@material-ui/core";
import TabInfo from "../../components/specificticker/TabInfo";
import Chart from "../../components/specificticker/ChartTab";
import ComparePopup from "../../components/compare/ComparePopup";
import FavoriteBorderIcon from "@mui/icons-material/FavoriteBorder";
import Favorite from "@mui/icons-material/Favorite";
import { Dialog, Box } from "@mui/material";
import CloseIcon from "@material-ui/icons/Close";
import axios from "axios";
import { useParams } from "react-router-dom";
import Login from "../login/Login" 

	const scrollToRef = (ref) => window.scrollTo(0, ref.current.offsetTop)  
	function Stockpage({user}) {
		const classes = useStyles();
		const myRef = useRef(null);
		const executeScroll = () => scrollToRef(myRef);
		const [open, setOpen] = useState(false);
		const handleOpen = () => setOpen(true);
		const handleClosed = () => setOpen(false);
		const label = { inputProps: { "aria-label": "Checkbox favorite" } };
		
		// Set selected row and tab
		const [selectedID, setSelectedID] = React.useState(null);
		const handleSelection = (newSelection) => {
			if (selectedID !== newSelection)
			{
				setSelectedID(newSelection);
			}
			else
			{
				setSelectedID(null);
			}
		}
		const [selectedTab, setSelectedTab] = React.useState('1');
		const { ticker } = useParams();
		const [company, setCompany] = useState([]);
		//
		useEffect(() => {
			componentDidMount();
			getFavorite();
		}, []);

		const componentDidMount = async () => {
			await axios.get(`/api/companyinfo/${ticker}`).then((response) => {
				setCompany(response.data.companyinfo);
			})

		};

		const CompanyId = company.map((info) =>{
			return info._id;
		})

		const [favorites, setFavorite] = useState([])
	  
		const getFavorite = async() =>{
		  await axios.get(`/api/favorites`)
		  .then((response) =>{
			setFavorite(response.data.favorites)
		  })
		  
		}
		const favLists = []
		favorites.map((f) =>{
			favLists.push(f.CompanyId)
		})
		console.log(favLists);
		

		const addFavorite = () =>{
			axios.post(`/api/favorites`, {
				UserId: user.userId,
				CompanyId: CompanyId[0],
			})	
			.then((response) => {
				console.log(response);
			  });
		}
		const checkFavorite = () =>{
			if (favLists.includes(CompanyId[0]) === true) {
				return true;
			}
			else {
				return false;
			}
		}
		
		const [isFavorite, setIsFavorite] = useState(checkFavorite());
		
		
		console.log(isFavorite)
		return (
			<>
				{user ? (
					<Container className={classes.container}>
					<div className={classes.title}>
						{company.map((info) => (
							<>
								<Typography variant="h6" className={classes.field}>
									{" "}
									{info.Industry}
								</Typography>
								<Typography variant="h5" className={classes.name}>
									{info.CompanyName} ({info.Ticker})
									<Checkbox
										{...label}
										icon={<FavoriteBorderIcon
											sx={{ fontSize: 45, color: "#fff" }} />}
										className={classes.fav_border}
										checked={isFavorite}
										checkedIcon={<Favorite sx={{ fontSize: 45 }} />} 
										onChange={e =>{
											if (isFavorite === false) {
												addFavorite() 
											}
											else {
												alert(ticker + " is removed") 
											}
											setIsFavorite(e.target.checked)
										}}
										/>
								</Typography>
								<div className={classes.line} />

								<div className={classes.info}>
									<TabInfo info={info} />
								</div>
							</>
						))}
					</div>
				<Button
					variant="contained"
					className={classes.button}
					onClick={handleOpen}
				>
					Compare
				</Button>
				<Dialog
					open={open}
					onClose={handleClosed}
					aria-labelledby="keep-mounted-modal-title"
					aria-describedby="keep-mounted-modal-description"
					BackdropProps={{
						style: { backgroundColor: "rgba(0,0,0,0.50)" },
					}}
					PaperProps={{
						style: {
							backgroundColor: "rgba(0,0,0,0.90)",
							color: "white",
						},
					}}
				>
					<Box>
						<IconButton
							style={{ color: "white", marginLeft: "85%" }}
							onClick={handleClosed}
						>
							<CloseIcon />
						</IconButton>
						<ComparePopup
							selectedID={selectedID}
							setSelectedID={setSelectedID}
							selectedTab={selectedTab}
							setSelectedTab={setSelectedTab}
							myRef={myRef}
							executeScroll={executeScroll}
							handleSelection = {handleSelection} />
					</Box>
				</Dialog>

				<div className={classes.graph}>
					<Chart compareTicker={selectedID}/>
				</div>
			</Container>
				):(
					<>
						<Container>
						<CircularProgress style={{ backgroundColor: "primary" }} className={classes.loading}/>
						</Container>
						
					</>
				)}
			</>
			
		);
}

export default Stockpage;
