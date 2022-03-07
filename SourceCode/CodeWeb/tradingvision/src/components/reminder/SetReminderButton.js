import React, {useState} from 'react'
import useStyles from './style'

import {Button,
        TextField,
        Dialog,
        DialogActions,
        DialogContent,
        DialogContentText ,
        DialogTitle,
        IconButton, 
        InputAdornment 
} from '@material-ui/core';
import AccessTimeIcon from '@mui/icons-material/AccessTime';
import AdapterDateFns from '@mui/lab/AdapterDateFns';
import LocalizationProvider from '@mui/lab/LocalizationProvider';
import DateTimePicker from '@mui/lab/DateTimePicker';

const SetReminderButton = () => {
    const classes = useStyles()
    const [open, setOpen] = React.useState(false);
    const [value, setValue] = React.useState(new Date());
    const handleClickOpen = () => {
      setOpen(true);
    };
  
    const handleClose = () => {
      setOpen(false);
    };
    
    return (
      <div>
        <Button variant="outlined" onClick={handleClickOpen}>
          Set Reminder
        </Button>
        <Dialog 
          open={open} 
          onClose={handleClose}
          className={classes.dialog}
          PaperProps={{
            style: {
              backgroundColor: 'white',
              height: '300px',
              width: '650px',}
          }}
        >
          <DialogTitle>
            <TextField
              placeholder="Add Title" 
              InputProps={{ disableUnderline: true,
                    style:{
                      fontSize:"17px",
                      fontFamily: "Montserrat",
                      color:"black",
                    }}} 
              
            /> 
          </DialogTitle>
          <div className={classes.line}></div>
          <DialogContent 
            className={classes.dialog_content}>
            <DialogContentText 
              style={{
                color:"black",
              }}> 
              <LocalizationProvider dateAdapter={AdapterDateFns}>
                  <DateTimePicker
                    renderInput={(props) => <TextField {...props} />}
                    label="DateTimePicker"
                    value={value}
                    onChange={(newValue) => {
                      setValue(newValue);
                    }}
                    className={classes.calendar}
                    sx={{color:"black"}}
                  />
              </LocalizationProvider>

            </DialogContentText>
            <TextField
              autoFocus
              margin="dense"
              id="name"
              label="Email Address"
              type="email"
              fullWidth
              variant="standard"
            />
          </DialogContent>
          <DialogActions>
            <Button 
              onClick={handleClose}
              className={classes.btn_Save}>Save</Button>
            <Button
              onClick={handleClose}
              className={classes.btn_Cancel}>Cancel</Button>
          </DialogActions>
        </Dialog>
      </div>
    );
}

export default SetReminderButton