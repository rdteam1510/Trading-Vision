import React, {useState, useEffect} from 'react'
import {  
    createTheme, 
    ThemeProvider, 
    TableContainer, 
    LinearProgress,
    Table,
    TableHead,
    TableRow,
    TableCell,
    TableBody,
    Paper,
    Container,
    TablePagination,

  } from '@material-ui/core'
  import { useNavigate } from 'react-router-dom';
  import useStyles from './style'
  import EditIcon from '@mui/icons-material/Edit';
  import DeleteIcon from '@mui/icons-material/Delete';
  import SetReminderButton from "./SetReminderButton";
  import { Typography } from '@mui/material';
  const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
      fontFamily: "Montserrat",
    },
  });

  const rows = [
    { id: 1, title:"title 1", time:"Date", ticker:"ticker", content: "content"},
    { id: 2, title:"title 2", time:"Date", ticker:"ticker", content: "content"},  
    { id: 3, title:"title 3", time:"Date", ticker:"ticker", content: "content"},
    { id: 4, title:"title 4", time:"Date", ticker:"ticker", content: "content"},
    { id: 5, title:"title 5 ", time:"Date", ticker:"ticker", content: "content"},  
    { id: 6, title:"title 6", time:"Date", ticker:"ticker", content: "content"},
    { id: 7, title:"title 7", time:"Date", ticker:"ticker", content: "content"},
    { id: 8, title:"title 8", time:"Date", ticker:"ticker", content: "content"},  
    { id: 9, title:"title 9", time:"Date", ticker:"ticker", content: "content"},
    { id: 10, title:"title 10", time:"Date", ticker:"ticker", content: "content"},
    { id: 11, title:"title 11", time:"Date", ticker:"ticker", content: "content"},  
    { id: 12, title:"title 12", time:"Date", ticker:"ticker", content: "content"},

  ]; 

const ReminderInfo = () => {
    const classes = useStyles()
    const [loading, setLoading] = useState(false)
    const [page, setPage] = useState(0)
    const [rowsPerPage, setRowsPerPage] = useState(10);


    const handleChangePage = (event, newPage) => {
        setPage(newPage);
      };
    
    const handleChangeRowsPerPage = (event) => {
    setRowsPerPage(parseInt(event.target.value, 10));
    setPage(0);
    };

  return (
      <Container>
    <ThemeProvider theme={darkTheme}>
      <div>
        <SetReminderButton/>
      </div>
      <TableContainer 
            className={classes.tableContainer}
            component={Paper}>
                {
                    loading ? (
                        <LinearProgress style={{backgroundColor:"primary"}}/>
                    ):(
                        <Table stickyHeader aria-label="sticky table">
                            <TableHead  className={classes.tablehead}
                            rowCount={rows.length}>
                                <TableRow>
                                {["TITLE", "TIME", "TICKER", "CONTENT", "EDIT","ACTIONS"].map((head) => (
                                    <TableCell
                                    className={classes.tablecell}
                                    key={head}
                                    align={head === "TITLE" ? "" : "left"}
                                    >
                                    {head}
                                    </TableCell>
                                ))}
                                </TableRow>
                            </TableHead>                                  
                        </Table>
                    )
                }
                
        </TableContainer>
        <Typography variant="h6" component="h6">
        There is nothing here. Please add your reminder
        </Typography>
            
    </ThemeProvider>
    </Container>
  )
}

export default ReminderInfo