import React, {useState, useEffect} from 'react'

import useStyles from '../style'
import { render } from "react-dom";
import {Button,
        
        Dialog,
        DialogActions,
        DialogContent,
        DialogContentText ,
        DialogTitle,
        Typography,
       
} from '@material-ui/core';
import AdapterDateFns from '@mui/lab/AdapterDateFns';
import LocalizationProvider from '@mui/lab/LocalizationProvider';
import DateTimePicker from '@mui/lab/DateTimePicker';
import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';
import axios from 'axios'
import {Form,  Field} from 'react-final-form'
import FormGroup from "@material-ui/core/FormGroup";
import FormControl from "@material-ui/core/FormControl";
import FormControlLabel from "@material-ui/core/FormControlLabel";


const EditReminder = (props) => {
    const classes = useStyles()
    const [date, setDate] = React.useState();
    const {open, onClose} = props
    const [stockTicker,setTicker] = React.useState([])
    const [stocks, setStock] = useState([])

    useEffect(() => {
      componentDidMount()
    },[])

    const componentDidMount = async() => {
      axios.get(`/api/stocks`)
      .then((response) =>{
        setStock(response.data.stocks)
      })
    }

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
    const handleClose = () => {
        onClose()
      };

      const sleep = ms => new Promise(resolve => setTimeout(resolve, ms));
      const validate = values => {
        const errors = {};
        if (!values.title) {
          errors.title = "Required";
        }
        if (!values.content) {
          errors.content = "Required";
        }

        return errors;
      };
      const onSubmit = async values => {
        await sleep(300);
        window.alert(JSON.stringify(values, 0, 2));
      };

  return (
    <div>
        <Dialog 
          open={open} 
          onClose={handleClose}
          PaperProps={{
            style: {
              backgroundColor: 'white',
              height: '430px',
              width: '555px',}
          }}
        >
            <Form
                onSubmit= {onSubmit}
                validat={validate}
                render={({ handleSubmit, reset, submitting, pristine, values }) => (
                    <form onSubmit={handleSubmit}>
                        <Field
                            fullWidth
                            name="title"
                            component={TextField}
                            type="text"
                            label="Add Title"
                        />
                        <LocalizationProvider dateAdapter={AdapterDateFns}>
                            <DateTimePicker
                                component = "form"
                                noValidate
                                autoComplete="off"
                                renderInput={(props) => <TextField {...props} />}
                                name = "date"
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
                        <Autocomplete
                            id="grouped-demo"
                            selectOnFocus
                            options={options.sort((a, b) => -b.firstLetter.localeCompare(a.firstLetter))}
                            groupBy={(option) => option.firstLetter}
                            getOptionLabel={(option) => option.ticker }
                            sx={{ width: 300 }}
                            getOptionSelected={(option, value) => option.ticker === value.ticker}
                            isOptionEqualToValue={(option, value) => option.ticker === value.ticker}
                            value={options.filter((item) => {
                                return item.ticker === props.ticker;
                            })[0] || ""}
                            // onInputChange={(event, newValue) => {
                            //     setInput(newValue);
                            //   }}
                            // onChange={(event, newInputValue) => {
                            //       setInputValue(newInputValue);
                            //     }}
                            onChange={(event, value) => setTicker(value)}
                            renderInput={(params) => 
                            <TextField 
                            {...params} 
                            required
                            label={<Typography style={{fontFamily:"Montserrat"}} >Choose a ticker...</Typography>} />}
                        />
                        <Field
                            fullWidth
                            name="content"
                            component={TextField}
                            type="text"
                            label="Content"
                        />
                    </form>
                )}
            />

            
        </Dialog>
    </div>
  )
}

export default EditReminder