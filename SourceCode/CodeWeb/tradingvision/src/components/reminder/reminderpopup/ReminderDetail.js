import React from 'react'
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';
import Button from '@mui/material/Button';
import Typography from '@mui/material/Typography';
import useStyles from '../style'
import { Box } from '@mui/system';
import { Autocomplete } from '@mui/material';
import { TextField } from '@material-ui/core';
const ReminderDetail = (props) => {
    const classes = useStyles();
    const ticker = 'ACB'
  return (
    <Dialog
              open={props.open}
              onClose={props.onClose}
              aria-labelledby="alert-dialog-title"
              aria-describedby="alert-dialog-description"
            >
             
              <DialogTitle id="alert-dialog-title" color = 'black' fontWeight = "500" fontSize = "25px">
              
                {"ACB Reminder"}
                

              </DialogTitle>
              <div className={classes.line}></div>
              <DialogContent>
                <DialogContentText id="alert-dialog-description" >
                <Typography gutterBottom  fontWeight = "400">
                    05/02/2021 11:10pm
                </Typography>
                <TextField
                  label="Ticker"
                  defaultValue={ticker}
                  InputProps={{ readOnly: true,
                    disableUnderline: true,
                    className: classes.ticker_field}}        
                />
          <Box sx={{ border: 0.5, borderRadius: '10px'}}>
                <Typography gutterBottom marginLeft = '4%'  marginTop = '4%' marginBottom = '4%'>
            Cras mattis consectetur purus sit amet fermentum. Cras justo odio,
            dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac
            consectetur ac, vestibulum at eros.
          </Typography>
          </Box>
                </DialogContentText>
              </DialogContent>
              <DialogActions>
                
                <Button 
                  onClick={props.onClose}
                  sx = {{
                    color: 'white',
                    backgroundColor:'#c1c1c1',
                    "&:hover":{
                      backgroundColor:"#AAAAAA",
                    }
                  }}
                  >
                  Close
                </Button>
              </DialogActions>
            </Dialog>
  )
}

export default ReminderDetail