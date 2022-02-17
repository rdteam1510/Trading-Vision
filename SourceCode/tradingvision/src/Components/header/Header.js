import { Avatar, 
        AppBar, 
        Container, 
        Toolbar, 
        Box,
        Typography, InputBase, Link, Badge, IconButton, createTheme, ThemeProvider, CssBaseline} from "@material-ui/core";
import React from "react";
import SearchIcon from '@mui/icons-material/Search';
import { alpha } from '@mui/material/styles';
import AccountCircle from '@mui/icons-material/AccountCircle';
import NotificationsIcon from '@mui/icons-material/Notifications';
import MenuItem from '@material-ui/core/MenuItem';
import Menu from '@material-ui/core/Menu';
import LogoutIcon from '@mui/icons-material/Logout';
import {useNavigate} from "react-router-dom";
import useStyles from "./style";

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
                            <InputBase
                            placeholder="Search…"
                            classes={{
                                root: classes.inputRoot,
                                input: classes.inputInput,
                            }}
                            inputProps={{ 'aria-label': 'search' }}
                            />
                        </div>
                        <div className={classes.navlinks}>
                            <Link to="/" className={classes.link}>
                            Market
                            </Link>
                            <Link to="/favorite" className={classes.link}>
                            Favorite
                            </Link>
                            <Link to="/reminder" className={classes.link}>
                            Reminder
                            </Link>
                        </div>
                        {auth && (
                        <div className={classes.menu} >
                            
                            <IconButton color="inherit" >
                                <Badge  color="secondary">
                                    <NotificationsIcon />
                                </Badge>
                            </IconButton>
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
                                <MenuItem onClick={handleClose}>
                                    <AccountCircle/>    Profile
                                </MenuItem>
                                <MenuItem onClick={handleClose}>
                                    <LogoutIcon/>   Sign Out
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