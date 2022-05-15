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
    delete_title:{
        fontFamily: "Montserrat",
        fontSize: "13px"
    },
    delete_warning:{
        backgroundColor: "#373A6D",
        marginLeft:"1%",
        marginTop:"5%",
        width: "90%",
        paddingTop: "20px",
        paddingLeft:"20px",
        height: "190px",
        borderRadius: "5px",
    },
    delete_permanent:{
        fontWeight: 'bold', 
        fontFamily: "Montserrat",
        fontSize: "20px",
        marginLeft:"2%", 
        marginTop:"1%"
    },
    warning:{
        fontFamily: "Montserrat",
        fontSize: "16px",
        marginLeft:"2%", 
        marginTop:"15px"
    },
    btn:{
        backgroundColor: "rgb(241, 35, 35)",
        borderRadius: "7px",
        color: "#FFFFFF",
        marginLeft:"2%", 
        marginTop: "2%",
        fontFamily: "Montserrat",
        fontWeight: "1000",
        "&:hover":{
            backgroundColor: "rgba(241, 35, 35, 0.7)"
        }
    },
    dialog_title: {
        fontWeight: "600",
        fontFamily: "Montserrat",
        fontSize: "19px",
        color: "rgb(241, 35, 35)",
    },
    dialog_content:{
        marginTop: "2%",
    },
    dialog_content_text:{
        fontFamily: "Montserrat",
        fontSize: "15px",
        marginTop: "1%",
    },
    btn_Delete:{
        backgroundColor: "rgb(241, 35, 35)",
       
        color: "#FFFFFF",
        marginBottom:"3%", 
        marginRight:"2%",
        marginTop: "14px",
        fontFamily: "Montserrat",
        fontWeight: "600",
        "&:hover":{
            backgroundColor: "rgba(241, 35, 35, 0.7)"
        }
    },
    btn_Cancel: {
        fontFamily: "Montserrat",
      fontWeight: "bold",
      backgroundColor:"white",
      color: '#7F8487',
      "&:hover":{
        backgroundColor:"#E4E5E8",
      },
      marginRight: '2%',
    }


}))

export default useStyles