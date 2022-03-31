import React, {useState, useEffect} from 'react'
import useStyles from '../style'
import { useForm } from "react-hook-form";
import {Button,
        
        Dialog,
        DialogActions,
        DialogContent,
        DialogContentText ,
        DialogTitle,
        RootRef,
        Typography,
       
} from '@material-ui/core';
import AdapterDateFns from '@mui/lab/AdapterDateFns';
import LocalizationProvider from '@mui/lab/LocalizationProvider';
import DateTimePicker from '@mui/lab/DateTimePicker';
import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';
import axios from 'axios'
import { Form } from '../useForm';



// const initialFValues = {
//     id: 0,
//     title: 'helloWorld',
//     content: 'remember to do sth',
//     ticker: 'ACB',
//     date: new Date(),
//   }

const ReminderEditTest = (props) => {
    const classes = useStyles()
    const [date, setDate] = React.useState();
    const {open, onClose} = props
    const [stockTicker,setTicker] = React.useState([])
    const initialValues = {
      title: props.title,
      ticker: props.ticker,
      time: props.time,
      content: props.content,
    }
    const [values, setValues] = useState('');

    const [stocks, setStock] = useState([])
    
    const { register, handleSubmit, formState: { errors }, reset } = useForm();
    const resetForm = () => {
      setValues(initialValues);
      
  }
    const handleClose = () => {
      
      onClose();
      resetForm();
    };
    const handleInputChange = (e) => {
      //const { name, value } = e.target
      setValues(prevState => ({
          ...prevState,
          [e.target.name]: e.target.value
      }))
      
    }
    const onSubmit = (data) => {
      console.log(data);
      fetch(`/api/reminders/${props.id}`, {
        method: "PATCH",
        body: JSON.stringify({
          Content: values.content,
          Title: props.title,
          Ticker: stockTicker.ticker,
          RemindAt: date.getTime(),
        }),
        headers: {
          "Content-type": "application/json; charset=UTF-8",
        },
      })
        .then((res) => res.json())
        .then(console.log);
      
          resetForm();
          handleClose();
          // refreshPage();
      }
      const componentDidMount = async() => {
       
        axios.get(`/api/stocks`)
        .then((response) =>{
          setStock(response.data.stocks)
        })
        
      }
  
    useEffect(() => {
      componentDidMount()
    },[])
    useEffect(() => {
      setValues(initialValues);
    }, [initialValues]);
    
    const listStocks = stocks.map((stock) =>{
      return {
        ticker: stock.Ticker,
      }
    })
    
    const options= listStocks.map((option) => {
      const firstLetter = option.ticker[0].toUpperCase();
      return {
        firstLetter: /[0-9]/.test(firstLetter) ? '0-9' : firstLetter,
        ...option,
      };
    });
    console.log(values)
    return (
        <div>
        
        <Dialog 
          open={open} 
          onClose={handleClose}
          PaperProps={{
            style: {
              backgroundColor: 'white',
              height: '500px',
              width: '560px',}
          }}
        >
        <Form onSubmit={handleSubmit(onSubmit)}>
          <DialogTitle>
            <TextField
             component = "form"
              variant = "standard" //to disable outline
              required 
              placeholder="Add Title" 
              noValidate
              autoComplete="off"
              InputProps={{ 
                    disableUnderline: true,
                    style:{
                      fontSize:"18px",
                      fontFamily: "Montserrat",
                      color:"black",
                    }}} 
              name="title"    
              value = {values.title}
              
              {...register("title", { required: true })}
              onChange={handleInputChange}            
              
            /> 
            {errors.title && <p>Title is empty</p>}
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
                    component = "form"
                    noValidate
                    autoComplete="off"
                    renderInput={(props) => <TextField {...props} required/>}
                    value={props.time}
                    onChange={(newValue) => {
                      setDate(newValue);
                    }}
                    className={classes.calendar}
                    inputProps={{
                        disableUnderline: true,
                        style: {
                          color: "black",
                          fontFamily:"Montserrat",
                          fontSize:"15px",
                        },
                        readOnly: true,
                        
                      }}
                  />
        
        
              </LocalizationProvider>

            </DialogContentText>
            
            <DialogContentText>
            <Autocomplete
                id="grouped-demo"
                selectOnFocus          
                options={options.sort((a, b) => -b.firstLetter.localeCompare(a.firstLetter))}
                groupBy={(option) => option.firstLetter}
                getOptionLabel={(option) => option.ticker}
                getOptionSelected={(option, value) => option.ticker === value.ticker}
                isOptionEqualToValue={(option, value) => option.ticker === value.ticker}
                value={options.filter((item) => {
                  return item.ticker === props.ticker;
                })[0] || ""}
                onChange={(event, value) => setTicker(value)}
                sx={{ width: 300 }}
                renderInput={(params) => <TextField 
                {...params} 
                required
                label={<Typography style={{fontFamily:"Montserrat"}}>Choose a ticker...</Typography>} 
                {...register("ticker", { required: true })}
               />}
               
              />
              {errors.ticker && <p>Ticker is empty</p>}
            </DialogContentText>

            <DialogContentText>
                
                 <TextField
                  component = "form"                  
                  noValidate
                  autoComplete="off"
                  
                  required  
                  placeholder="Content"
                  multiline
                  rows={4}
                  className={classes.reminder}
                  InputProps={{
                    disableUnderline: true,
                    style:{
                      fontSize:"17px",
                      fontFamily: "Montserrat",
                      color:"black",
                      width:"500px",
                      },
                    }}
                  variant = "outlined"
                  size = "large"
                  name="content"        
                  // value={values.content}
                  onChange={handleInputChange}
                  {...register("content", { required: true })}
                />
                {errors.content && <p>Content is empty</p>}
             
          </DialogContentText>
          </DialogContent>
          <DialogActions className={classes.btn}>
            <Button 
              type = "submit"
              className={classes.btn_Save}>Save</Button>
            <Button
              onClick={handleClose}
              className={classes.btn_Cancel}>Cancel</Button>
          </DialogActions>
          </Form>
        </Dialog>
      </div>
  );
}


export default ReminderEditTest;