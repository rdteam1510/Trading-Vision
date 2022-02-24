import { makeStyles } from '@material-ui/core/styles';


const useStyles = makeStyles(()=>({
    container:{
        backgroundColor: "black",
        paddingLeft: '2%',
        paddingRight:'2%',
        fontFamily: "Montserrat",
    },
    title:{
        paddingTop: 25,
        paddingBottom: 30,
        fontFamily: "Montserrat",
    },
    field:{
        fontFamily: "Montserrat",
    },
    name:{
        fontFamily: "Montserrat",
        fontWeight: "bold",
    },
    line:{
        border: 'solid orange',
        height: '100%',
        width: '150px',
        marginTop: '3px',
    },
    fav_border: {
        marginLeft: "30px",
        marginTop: "-20px", 
        padding: "-3px",
    },
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
    }
}))


export default useStyles