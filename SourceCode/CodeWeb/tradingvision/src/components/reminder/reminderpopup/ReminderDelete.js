import React from 'react'
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';
import { Button } from '@material-ui/core';
import DeleteForeverIcon from '@mui/icons-material/DeleteForever';
import 'react-toastify/dist/ReactToastify.css';
import useStyles from '../style';

const ReminderDelete = (props) => {
 
  const classes = useStyles()  
  return (
    <Dialog
              open={props.open}
              onClose={props.onClose}
              aria-labelledby="alert-dialog-title"
              aria-describedby="alert-dialog-description"
              BackdropProps={{
                style: { backgroundColor: "rgba(0,0,0,0.20)" },
              }}
            >
             
              <DialogTitle id="alert-dialog-title" color = '#f12323' align = "center">
              <DeleteForeverIcon
                align = "center" 
                sx = {{
                  fontSize:80,
                  color:'#f12323',}}/> <br/>
               You are about to delete the reminder {props.title}
              </DialogTitle>
              <DialogContent 
              >
                <DialogContentText id="alert-dialog-description" align = "center">
                  This will delete the reminder {props.title} from reminder list. <br/>Are you sure?
                </DialogContentText>
              </DialogContent>
              <DialogActions>
                <Button 
                  onClick={()=>{props.deleteReminder(props.rowID); props.onClose();}}
                  className={classes.btn_Delete}
                 >Delete</Button>

                <Button 
                  onClick={props.onClose}
                  className={classes.btn_Cancel}
                  
                  >
                  Cancel
                </Button>
              </DialogActions>
            </Dialog>
  )
}

export default ReminderDelete