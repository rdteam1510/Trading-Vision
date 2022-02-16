import { makeStyles } from "@material-ui/core";
import { alpha } from '@mui/material/styles';

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

export default useStyles