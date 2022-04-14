import React, {useState} from 'react'
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';
import Button from '@mui/material/Button';
import DeleteForeverIcon from '@mui/icons-material/DeleteForever';
import axios from 'axios';
import { ToastContainer, toast, Slide } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import useStyles from '../style';

const ReminderDelete = (props) => {
  const [status, setStatus] = useState([])
  const classes = useStyles()


  const componentDidMount = async(row) => {
    axios.delete(`/api/reminders/`+ row)
    .then((res) => setStatus(res.data))
    .then(console.log("Done"))
    toast.success("Successfully deleted your reminder!", 
        {autoClose: 5000, 
        transition: Slide,
        position:"bottom-left",
        }) 
  }
  
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
              <DialogContent>
                <DialogContentText id="alert-dialog-description" align = "center">
                  This will delete the reminder {props.title} from reminder list. <br/>Are you sure?
                </DialogContentText>
              </DialogContent>
              <DialogActions>
                <Button 
                  onClick={()=>{componentDidMount(props.rowID); props.onClose()}}
                  sx = {{
                    color: 'white',
                    backgroundColor:'#f12312',
                    "&:hover":{
                      backgroundColor:"#D11A2A",
                    }
                  }}>Delete</Button>
                  <ToastContainer className={classes.toast} 
											toastStyle={{ color:"#000" }}/>
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
                  Cancel
                </Button>
              </DialogActions>
            </Dialog>
  )
}

export default ReminderDelete