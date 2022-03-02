

import {makeStyles} from '@material-ui/core'

const useStyles = makeStyles((theme) => ({
    // Tab's styles
    tablist:{
        color: "orange",
      },
    tab:{
        marginTop: 15,
        fontFamily: "Montserrat",
        marginLeft: -20,
        fontSize: 15,
        [theme.breakpoints.down('sm')]: {
            fontSize: 13,
          },
    },
    divider:{
        height:"50px",
        marginTop: "10px",
        marginLeft: "-25px",
        backgroundColor: "rgba(255, 165, 0, 0.5)"
    },
    // Profile's styles
    grid:{
        paddingTop: 25,
    },
    description:{
        fontFamily:"Montserrat",
        fontSize:"15px",
        textAlign: "justify",
        [theme.breakpoints.down('sm')]: {
            fontSize: 13,
          },
    },
    profile:{
        maxWidth: "1000px",
    },
    item: {
        fontFamily: "Montserrat",
        fontSize: "15px",
        [theme.breakpoints.down('sm')]: {
            fontSize: 13,
          },
        [theme.breakpoints.down('xs')]: {
            fontSize: 10,
            },
    },
    grid_info:{
        marginLeft: "-35%",
        [theme.breakpoints.up('sm')]: {
            marginLeft: "-25%"
          },
    },

    // Financial's styles
    value:{
        fontFamily: "Montserrat",
        fontSize: "15px",
        [theme.breakpoints.down('sm')]: {
            fontSize: 13,
          },
          [theme.breakpoints.down('xs')]: {
            fontSize: 10,
          },
    },
    financial:{
        maxWidth: "1000px",
    },
    note:{
        marginLeft: "-1%",
        [theme.breakpoints.down('sm')]: {
            marginLeft: "-3%",
          },
    },
    note_info:{
        fontFamily: "Montserrat",
        fontSize: "11px",
        marginLeft: "1%",
        fontStyle: "italic",
        [theme.breakpoints.down('xs')]: {
            fontSize: 9,
          },
    },

    
}))


export default useStyles;
