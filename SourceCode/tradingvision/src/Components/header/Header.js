import { Avatar, 
        AppBar, 
        Container, 
        Toolbar, 
        Box,
        Button,
        Typography, InputBase, Link, Badge, IconButton, createTheme, ThemeProvider, CssBaseline} from "@material-ui/core";
import React, {useState} from "react";
import SearchIcon from '@mui/icons-material/Search';
import { alpha } from '@mui/material/styles';
import AccountCircle from '@mui/icons-material/AccountCircle';
import MenuItem from '@material-ui/core/MenuItem';
import Menu from '@material-ui/core/Menu';
import LogoutIcon from '@mui/icons-material/Logout';
import {useNavigate} from "react-router-dom";
import useStyles from "./style";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Navbar from './Navbar'
import Popover from '@mui/material/Popover';
import PopupState, { bindTrigger, bindPopover } from 'material-ui-popup-state';
import StockTable from '../stocktable/StockTable';
const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#000",
      },
      type: "dark",
    },
  });

const Header = () =>{ 
    const classes = useStyles();
    const history = useNavigate(); 
    const [auth, setAuth] = React.useState(true);
    const [anchorEl, setAnchorEl] = React.useState(null);
    const open = Boolean(anchorEl);

    const handleChange = (event) => {
        setAuth(event.target.checked);
    };

    const handleMenu = (event) => {
        setAnchorEl(event.currentTarget);
    };

    const handleClose = () => {
        setAnchorEl(null);
    };

    
    return ( 
        <ThemeProvider theme={darkTheme}>
            <AppBar position="static" className={classes.appbar}>
                <CssBaseline/>
                <Container>
                    <Toolbar>
                        {/* <img src="logo.png" alt="logo" className={classes.logo} /> */}
                        {/* <Box
                            component="img"
                            sx={{
                            height: 40,
                            width: 150,
                            maxHeight: { xs: 233, md: 167 },
                            maxWidth: { xs: 350, md: 250 },
                            }}
                            alt="logo"
                            src="logo.png" 
                            onClick={() => history("/")}
                            className={classes.logo}
                        /> */}



                        <Typography 
                        onClick={() => history("/")} 
                        className={classes.title}
                        variant="h5"> Trading Vision </Typography>
                        
                        <div className={classes.search}>
                            <div className={classes.searchIcon}>
                                <SearchIcon />
                                </div>
                            
                            <PopupState variant="popover" popupId="demo-popup-popover">
                                    {(popupState) => (
                                        <div>
                                        <InputBase
                                            placeholder="Search…"
                                            classes={{
                                                root: classes.inputRoot,
                                                input: classes.inputInput,
                                            }}
                                            inputProps={{ 'aria-label': 'search' }}
                                            {...bindTrigger(popupState)}/>
                                        <Popover className={classes.popover}
                                            {...bindPopover(popupState)}
                                            anchorPosition={{top:100, left: 2000}}
                                            anchorOrigin={{
                                            vertical: 'center',
                                            horizontal: 'center',
                                            }}
                                            transformOrigin={{
                                            vertical: 'center',
                                            horizontal: 'center',
                                            }}
                                        >
                                            <StockTable/>
                                        </Popover>
                                        </div>
                                    )}
                                    </PopupState>
                        </div>
                        <div className={classes.navlinks}>
                            {/* <Button onClick={() => history("/")} className={classes.link}>
                            Market
                            </Button>
                            <Button onClick={() => history("/favorite")} className={classes.link}>
                            Favorite
                            </Button>
                            <Button onClick={() => history("/reminder")} className={classes.link}>
                            Reminder
                            </Button> */}
                           <Navbar className={classes.link}/>
                            
                        </div>
                        {auth && (
                        <div className={classes.menu} >
                            <IconButton
                                aria-label="account of current user"
                                aria-controls="menu-appbar"
                                aria-haspopup="true"
                                onClick={handleMenu}
                                color="inherit">
                                <AccountCircle />
                            </IconButton>
                            <Menu 
                                id="menu-appbar"
                                anchorEl={anchorEl}
                                anchorOrigin={{
                                vertical: 'top',
                                horizontal: 'right',
                                }}
                                keepMounted
                                transformOrigin={{
                                vertical: 'top',
                                horizontal: 'right',
                                }}
                                open={open}
                                onClose={handleClose}
                            >
                                <MenuItem onClick={() => history("/profile")}>
                                    <AccountCircle/>    
                                    <Typography
                                    style={{ marginLeft: '10px'}}>Profile</Typography>
                                </MenuItem>
                                <MenuItem onClick={handleClose}>
                                    <LogoutIcon/>
                                    <Typography
                                    style={{ marginLeft: '10px'}}>Sign Out</Typography>
                                </MenuItem>
                            </Menu>
                        </div>
                        )}
                    </Toolbar>
                </Container>

            </AppBar>
            </ThemeProvider>
    )
}

export default Header