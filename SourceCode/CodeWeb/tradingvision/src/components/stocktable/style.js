import { makeStyles } from "@material-ui/core";

const useStyles = makeStyles((theme) => ({
    tablehead:{
      backgroundColor:"#131110",
    },
    tablecell:{
      color: "white",
      fontWeight: "700",
      fontFamily: "Montserrat",
    },
    row: {
      backgroundColor: "#131110",
      cursor: "pointer",
      "&:hover": {
        backgroundColor: "#36454F",
      },
      fontFamily: "Montserrat",
    },
    tableContainer: {
      maxHeight: 550,
    },
}))

export default useStyles