import React, {useState} from 'react'
import useStyles from './style'

import {Button,
        
        Dialog,
        DialogActions,
        DialogContent,
        DialogContentText ,
        DialogTitle,
       
} from '@material-ui/core';
import AdapterDateFns from '@mui/lab/AdapterDateFns';
import LocalizationProvider from '@mui/lab/LocalizationProvider';
import DateTimePicker from '@mui/lab/DateTimePicker';
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';


const SetReminderButton = () => {
    const classes = useStyles()
    const [open, setOpen] = React.useState(false);
    const [date, setDate] = React.useState(new Date());
    const [value, setValue] = React.useState();

    const handleChange = (event) => {
      setValue(event.target.value);
    };

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
          PaperProps={{
            style: {
              backgroundColor: 'white',
              height: '400px',
              width: '650px',}
          }}
        >
          <DialogTitle>
            <TextField
              required
              placeholder="Add Title" 
              InputProps={{ disableUnderline: true,
                    style:{
                      fontSize:"18px",
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
                    value={date}
                    variant="inline"
                    onChange={(newValue) => {
                      setDate(newValue);
                    }}
                    className={classes.calendar}
                    inputProps={{
                        style: {
                          color: "black",
                          fontFamily:"Montserrat",
                          fontSize:"15px",
                        },
                      }}
                  />
              </LocalizationProvider>

            </DialogContentText>
            <DialogContentText>
                <Box
                    component = "form"
                    border={4}
                    borderColor="black"
                    height="170px" 
                    // sx={{
                    //   '& .MuiTextField-root': { m: 1, width: '25ch' },
                    // }}
                    noValidate
                    autoComplete="off"
                  >
                 <TextField
                 
                  error
                  required  
                  placeholder="Content"
                  multiline
                  maxRows={5}
                  value={value}
                  className={classes.reminder}
                  onChange={handleChange}
                  InputProps={{
                    disableUnderline: true,
                    style:{
                      fontSize:"17px",
                      fontFamily: "Montserrat",
                      color:"black",
                      width:"500px",
                    },
                    }}
                  
                  helperText="Empty content"
                />
              </Box>  
          </DialogContentText>
          </DialogContent>
          <DialogActions className={classes.btn}>
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

