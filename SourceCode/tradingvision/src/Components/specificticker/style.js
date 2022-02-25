import {makeStyles} from '@material-ui/core'

const useStyles = makeStyles((theme) => ({
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


export default useStyles;

