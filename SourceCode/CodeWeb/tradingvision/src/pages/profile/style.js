import {makeStyles} from '@material-ui/core'

const useStyles = makeStyles(()=>({
    container: {
        marginLeft:"9%",
        marginBottom: "15%",
        marginTop: "6%",
    },
    title:{
        fontFamily: "Montserrat",
        fontWeight: "600",
    },
    Grid:{
        marginTop:"3%",
        marginBottom:"5%"
    },
    avatar:{
        height: "150px",
        width: "150px",
        marginTop: "3%",
    },
    info_grid:{
        marginLeft:"5%",
    },
    info:{
        fontSize: "18px", 
        marginTop: "10px",
        fontFamily: "Montserrat",
    },

}))

export default useStyles