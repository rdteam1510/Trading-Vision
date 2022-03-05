import {makeStyles} from '@material-ui/core'

const useStyles = makeStyles((theme)=>({
    tablehead:{
        backgroundColor:"black",
      },
      tablecell:{
        color: "white",
        fontWeight: "700",
        fontFamily: "Montserrat",
        backgroundColor:"black",
        borderBottom: "1.5px solid #AEAEAE",
      },
      row: {
        cursor: "pointer",
        fontFamily: "Montserrat",
        backgroundColor: "black",
        
        '&:hover': {
          backgroundColor: "rgba(55,58,109,0.5)",
      },
    },
      cell:{
        color:'white',
        fontFamily:'Montserrat',
      },
      tableContainer: {
        marginTop: "5%",
        maxHeight: 500,
        marginBottom: "10%",
        border: "2px solid #AEAEAE",
      },
    pagination: {
        backgroundColor: "black",
    }
      
}))

export default useStyles