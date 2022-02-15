import { AppBar, Container, Toolbar, Typography, InputBase, Link, Badge, IconButton, createTheme, ThemeProvider} from "@material-ui/core";
import React from "react";
import SearchIcon from '@mui/icons-material/Search';
import { alpha } from '@mui/material/styles';
import { makeStyles } from "@material-ui/core";
import AccountCircle from '@mui/icons-material/AccountCircle';
import NotificationsIcon from '@mui/icons-material/Notifications';
import MenuItem from '@material-ui/core/MenuItem';
import Menu from '@material-ui/core/Menu';
import LogoutIcon from '@mui/icons-material/Logout';
import {useNavigate} from "react-router-dom";

const useStyles = makeStyles((theme) =>({
    grow: {
        flexGrow: 1,
      },
    title:{
        fontWeight: "bold",
        cursor: "pointer",
    },
    search: {
        position: 'relative',
        borderRadius: theme.shape.borderRadius,
        backgroundColor: alpha(theme.palette.common.white, 0.15),
        '&:hover': {
          backgroundColor: alpha(theme.palette.common.white, 0.25),
        },
        marginRight: theme.spacing(5),
        marginLeft: theme.spacing(5),
        width: '100%',
        [theme.breakpoints.up('sm')]: {
          marginLeft: theme.spacing(3),
          width: 'auto',
        },
      },
      searchIcon: {
        padding: theme.spacing(0, 2),
        height: '100%',
        position: 'absolute',
        pointerEvents: 'none',
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
      },
      inputRoot: {
        color: 'inherit',
      },
      inputInput: {
        padding: theme.spacing(1, 1, 1, 0),
        // vertical padding + font size from searchIcon
        paddingLeft: `calc(1em + ${theme.spacing(4)}px)`,
        transition: theme.transitions.create('width'),
        width: '100%',
        [theme.breakpoints.up('md')]: {
          width: '20ch',
        },
      },
      navlinks: {
        marginLeft: theme.spacing(1),
        display: "flex",
        [theme.breakpoints.up('sm')]: {
            display: 'flex',
            width: 'auto',
          },
      },
      link: {
        textDecoration: "none",
        display: 'flex',
        color: "white",
        fontSize: "16px",
        marginLeft: theme.spacing(10),
        "&:hover": {
          color: "orange",
        },
        menu: {
            display: 'none',
            [theme.breakpoints.up('md')]: {
              display: 'flex',
            },
          },
    }
}))



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
        <div className={classes.grow}>
        
            <AppBar color="primary" position="static">
                <Container>
                    <Toolbar>
                        <Typography 
                        onClick={() => history("/")} 
                        className={classes.title}
                        variant="h7"> Trading Vision </Typography>
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
                        <div className={classes.menu}>
                            
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
            
        </div>
        
    )
}

export default Header