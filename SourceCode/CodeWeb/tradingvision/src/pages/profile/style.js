import {makeStyles} from '@material-ui/core'

const useStyles = makeStyles((theme) =>({
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
        height: "120px",
        width: "120px",
        [theme.breakpoints.down('sm')]:{
            height: "80px",
            width: "80px",
        },
        
    },
    info_grid:{
        marginLeft:"5%",
        marginTop: "1%",
        
    },
    info:{
        fontSize: "18px", 
        
        fontFamily: "Montserrat",
        padding: "2%",
    },
    username:{
        marginTop: "10px",
        fontWeight: 'bold', 
        fontFamily: "Montserrat",
        marginBottom: "15%",
        fontSize: "22px",
    },
    Grid_delete:{
        marginTop: "10%"
    },
    delete_title:{
        fontFamily: "Montserrat",
        fontSize: "13px"
    },
    delete_warning:{
        backgroundColor: "#373A6D",
        marginLeft:"3%",
        marginTop:"-1%",
        width: "80%",
        height: "150px",
        borderRadius: "5px",
    },
    delete_permanent:{
        fontWeight: 'bold', 
        fontFamily: "Montserrat",
        fontSize: "16px",
        marginLeft:"2%", 
        marginTop:"1%"
    },
    warning:{
        fontFamily: "Montserrat",
        fontSize: "14px",
        marginLeft:"2%", 
        marginTop:"15px"
    },
    btn:{
        backgroundColor: "#F12323",
        borderRadius: "7px",
        color: "#FFFFFF",
        marginLeft:"2%", 
        marginTop: "14px",
        fontFamily: "Montserrat",
        fontWeight: "600",
    }


}))

export default useStyles