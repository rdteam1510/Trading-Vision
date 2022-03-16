import { 
    AppBar, 
    Container, 
    Toolbar, 
    Typography, InputBase, 
    IconButton, createTheme, 
    ThemeProvider, CssBaseline, Avatar} from "@material-ui/core";
import React, {useState} from "react";
import SearchIcon from '@mui/icons-material/Search';
import AccountCircle from '@mui/icons-material/AccountCircle';
import MenuItem from '@material-ui/core/MenuItem';
import Menu from '@material-ui/core/Menu';
import LogoutIcon from '@mui/icons-material/Logout';
import {NavLink, useNavigate} from "react-router-dom";
import useStyles from "./style";
import Navbar from './Navbar'
import Modal from '@mui/material/Modal';
import SearchPopup from "../search/SearchPopup";


const darkTheme = createTheme({
palette: {
  primary: {
    main: "#000",
  },
  type: "dark",
},
});

const Header = ({user}) =>{ 

    const classes = useStyles();
    const history = useNavigate(); 
    const [auth, setAuth] = React.useState(true);
    const [anchorEl, setAnchorEl] = React.useState(false);
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

    const [test, setTest] = React.useState(false);
    const handleOpen = () => setTest(true);
    const handleClosed = () => {  
    setTest(false)

    };
    const logout = () => {
        window.open("http://localhost:4040/auth/logout", "_self");
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
                                        onClick={handleOpen}
                                        style={{fontFamily: "Montserrat"}}
                                        />
                        
                        <Modal
                            keepMounted
                            open={test}
                            onClose={handleClosed}
                            
                            aria-labelledby="keep-mounted-modal-title"
                            aria-describedby="keep-mounted-modal-description"
                            style={{ alignItems: "center", justifyContent: "center", paddingTop: 100}}
                            BackdropProps={{ style: { backgroundColor: 'rgba(0,0,0,0.93)',
                             } }}
                        >
                            <SearchPopup />
                        </Modal>
                        

                    </div>
                    <div className={classes.navlinks}>
                       
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
                            {/* <Avatar src={user.image} alt='avatar'/> */}
                        </IconButton>
                        {user ? (
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
                            <MenuItem onClick={() => {history("/profile"); handleClose()}}
                                        >
                                <AccountCircle/>  
                                <Typography
                                style={{ marginLeft: '10px'}}>Profile</Typography>
                            </MenuItem>
                            <MenuItem onClick={() => {history("/login"); handleClose(); logout();}}>
                                <LogoutIcon/>
                                <Typography
                                style={{ marginLeft: '10px'}}>Sign Out</Typography>
                            </MenuItem>
                        </Menu>
                        ):(
                            <Menu id="menu-appbar"
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
                            onClose={handleClose}>
                                <MenuItem onClick={() => {history("/login"); handleClose();}}>
                                    <LogoutIcon/>
                                    <Typography
                                    style={{ marginLeft: '10px'}}>Sign In</Typography>
                                </MenuItem>
                            </Menu>
                        )}
                        
                    </div>
                    )}
                </Toolbar>
            </Container>

        </AppBar>
        </ThemeProvider>
)
}

export default Header