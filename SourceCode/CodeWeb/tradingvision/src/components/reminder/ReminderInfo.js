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
  import Dialog from '@mui/material/Dialog';
  import DialogActions from '@mui/material/DialogActions';
  import DialogContent from '@mui/material/DialogContent';
  import DialogContentText from '@mui/material/DialogContentText';
  import DialogTitle from '@mui/material/DialogTitle';
  import Button from '@mui/material/Button';
  import DeleteForeverIcon from '@mui/icons-material/DeleteForever';
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

    const [open, setOpen] = React.useState(false);

    const handleClickOpen = () => {
      setOpen(true);
    };

    const handleClose = () => {
      setOpen(false);
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
                    
                            <TableBody>
                                {rows
                                .slice(page * rowsPerPage, page * rowsPerPage + rowsPerPage)
                                .map((row)=> (
                                    <TableRow
                                    className ={classes.row}
                                    key={row.title}>
                                    <TableCell component='th' scope='row'
                                        style={{
                                          fontWeight: 'bold',
                                        }}
                                        className={classes.cell}> {row.title}
                                    </TableCell>
                                    <TableCell align="left" className={classes.cell}>{row.time}</TableCell>
                                    <TableCell align="left" className={classes.cell}>{row.ticker}</TableCell>
                                    <TableCell align="left" className={classes.cell}>{row.content}</TableCell>
                                    <TableCell align="left" className={classes.cell}><EditIcon /></TableCell>
                                    <TableCell align="left" className={classes.cell}><DeleteIcon style={{marginLeft:"10%"}} onClick = {handleClickOpen}/></TableCell>
                                </TableRow>
                                ))}
                            </TableBody>
                            
                        </Table>
                    )
                }
                <TablePagination
                className={classes.pagination}
                rowsPerPageOptions={[5,10,25,100]}
                component="div"
                count={rows.length}
                page={page}
                onPageChange={handleChangePage}
                rowsPerPage={rowsPerPage}
                onRowsPerPageChange={handleChangeRowsPerPage}
                />
            </TableContainer>
                  <Dialog
              open={open}
              onClose={handleClose}
              aria-labelledby="alert-dialog-title"
              aria-describedby="alert-dialog-description"
            >
             
              <DialogTitle id="alert-dialog-title" color = '#f12323' align = "center">
              <DeleteForeverIcon
                align = "center" 
                sx = {{
                  fontSize:80,
                  color:'#f12323',}}/> <br/>
                {"You are about to delete a reminder"}
              </DialogTitle>
              <DialogContent>
                <DialogContentText id="alert-dialog-description" align = "center">
                  This will delete the reminder from reminder list. <br/>Are you sure?
                </DialogContentText>
              </DialogContent>
              <DialogActions>
                <Button 
                  onClick={handleClose} 
                  sx = {{
                    color: 'white',
                    backgroundColor:'#f12312'
                  }}>Delete</Button>
                <Button 
                  onClick={handleClose}
                  sx = {{
                    color: 'black',
                    backgroundColor:'grey'
                  }}>
                  Cancel
                </Button>
              </DialogActions>
            </Dialog>
    </ThemeProvider>
    </Container>
  )
}

export default ReminderInfo