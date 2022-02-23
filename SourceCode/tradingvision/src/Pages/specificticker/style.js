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

}))


export default useStyles