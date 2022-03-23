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
  import useStyles from './style'
  import EditIcon from '@mui/icons-material/Edit';
  import DeleteIcon from '@mui/icons-material/Delete';
  import SetReminderButton from "./reminderpopup/SetReminderButton";  
  import ReminderDelete from './reminderpopup/ReminderDelete';
  import ReminderDetail from './reminderpopup/ReminderDetail';
  import ReminderEdit from './reminderpopup/ReminderEdit';
  

  const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
      fontFamily: "Montserrat",
    },
  });

 
const ReminderInfo = ({reminders}) => {
  
    const classes = useStyles()
    const [loading, setLoading] = useState(false)
    const [page, setPage] = useState(0)
    const [rowsPerPage, setRowsPerPage] = useState(10);
    const [selectedRow, setSelectedRow] = useState();

    const rows = reminders.map((reminder) =>{
      return {
        id: reminder._id,
        title: reminder.Title,
        ticker: reminder.Ticker,
        content: reminder.Content,
        time: new Date( new Date(reminder.RemindAt).toUTCString() ).toLocaleString(),
      }
    })
    //Open reminder content
    const [openReminder, setOpenReminder] = React.useState(false);
    
    const handleOpenReminder = (row) => {
      setSelectedRow(row);
      setOpenReminder(true);
      
    };
    const handleCloseReminder = () => {
      setOpenReminder(false);
     
    };
    
    //Open reminder edit
    const [openEdit, setOpenEdit] = React.useState(false)
    const handleOpenEdit = (row) => {
      setSelectedRow(row);
      setOpenEdit(true);
    };
    const handleCloseEdit = () => {
      setOpenEdit(false);
    };

    //Handle pagination
    const handleChangePage = (event, newPage) => {
        setPage(newPage);
      };
    
    const handleChangeRowsPerPage = (event) => {
    setRowsPerPage(parseInt(event.target.value, 10));
    setPage(0);
    };
    
    //Open reminder delete
    const [openDelete, setOpenDelete] = useState(false);
    const handleOpenDelete = () => {
      setOpenDelete(true);
    }
    const handleCloseDelete = () => {
      setOpenDelete(false);
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
                                 <>
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
                                    <TableCell align="left" className={classes.cell} 
                                    onClick = {() => handleOpenReminder(row)}                                   
                                    >
                                    Read more
                                   
                                    </TableCell>
                                   
                                    <TableCell align="left" className={classes.cell}>
                                      <EditIcon 
                                      onClick = {() => handleOpenEdit(row)} 
                                      
                                       /></TableCell>
                                    <TableCell align="left" className={classes.cell}><DeleteIcon style={{marginLeft:"10%"}} onClick = {handleOpenDelete}/></TableCell>
                                    
                                </TableRow>
                                {/* <ReminderDetail 
                                        open = {openReminder} 
                                        onClose = {handleCloseReminder}
                                        content = {selectedRow?.content}
                                        ticker = {selectedRow?.ticker}
                                        title = {selectedRow?.title}
                                        time = {selectedRow?.time}

                                         />  
                                <ReminderEdit 
                                  open = {openEdit} 
                                  onClose = {handleCloseEdit} 
                                  content = {selectedRow?.content}
                                  ticker = {selectedRow?.ticker}
                                  title = {selectedRow?.title}
                                  time = {selectedRow?.time}
                                  id = {selectedRow?.id}/>    */}

                                <ReminderDelete open = {openDelete} onClose = {handleCloseDelete} rowID={row.id}

                                />   
                                </>
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

    </ThemeProvider>

    
    </Container>
  )
}

export default ReminderInfo