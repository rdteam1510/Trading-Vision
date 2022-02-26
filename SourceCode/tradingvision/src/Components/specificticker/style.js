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
        textAlign: "justify"
    },
    profile:{
        maxWidth: "1000px",
    },
    item: {
        fontFamily: "Montserrat",
        fontSize: "15px",
    },
    grid_info:{
        marginLeft: "-35%",
    },

    // Financial's styles
    
}))


export default useStyles;

