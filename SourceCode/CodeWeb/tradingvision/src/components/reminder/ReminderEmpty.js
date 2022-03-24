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
    Button,

  } from '@material-ui/core'
  import { useNavigate } from 'react-router-dom';
  import useStyles from './style'
  import EditIcon from '@mui/icons-material/Edit';
  import DeleteIcon from '@mui/icons-material/Delete';
  import SetReminderButton from "./reminderpopup/SetReminderButton";
  import { Typography } from '@mui/material';
  import { useForm, Form } from './useForm';

  const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
      fontFamily: "Montserrat",
    },
  });

const ReminderEmpty = () => {
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
      <TableContainer 
            className={classes.tableContainer}
            component={Paper}>
                {
                    loading ? (
                        <LinearProgress style={{backgroundColor:"primary"}}/>
                    ):(
                        <Table stickyHeader aria-label="sticky table">
                            <TableHead  className={classes.tablehead}
                            >
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
        <Typography 
        variant="h6" 
        component="h6"
        align="center" >
        There is nothing here.<br/> 
        Please add your reminder
        
                <br/><br/><br/>
                <div>
                
                  <SetReminderButton 
                   />
                </div>
                <br/><br/><br/>

        
        </Typography>
            
    </ThemeProvider>
    </Container>
  )
}

export default ReminderEmpty