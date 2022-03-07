import React, {useState} from 'react';
import {useParams} from 'react-router-dom';
import useStyles from './style'
import {Container,
      Typography,
      Button,
      Checkbox,
      IconButton,
    } from '@material-ui/core'
import TabInfo from '../../components/specificticker/TabInfo'
import Chart from '../../components/specificticker/ChartTab'
import ComparePopup from '../../components/compare/ComparePopup';
import FavoriteBorderIcon from '@mui/icons-material/FavoriteBorder';
import Favorite from '@mui/icons-material/Favorite';
import { Dialog, Box } from '@mui/material';
import CloseIcon from '@material-ui/icons/Close';
const Stockpage = () => {


  const classes = useStyles()
  const {ticker} = useParams()
  const [stock, setStock] = useState()

  const [open, setOpen] = React.useState(false);
  const [selectedValue, setSelectedValue] = React.useState(false);
  const handleClickOpen = () => {
    setOpen(true);
  };

  const handleClose = (value) => {
    setOpen(false);
    setSelectedValue(value);
  };
  const handleOpen = () => setOpen(true);
  const handleClosed = () => setOpen(false);
  const label = { inputProps: { 'aria-label': 'Checkbox favorite' } }; 
 
  const [collapse, setCollapsed] = React.useState(true);

  return (
  
      <Container className={classes.container}>
      <div className={classes.title}>
        <Typography 
          variant="h6" 
          className={classes.field}
         >
            Field
        </Typography>
        <Typography 
          variant="h4" 
          className={classes.name}>
          Company Name (Ticker label) 
          <Checkbox {...label} 
            icon={<FavoriteBorderIcon sx={{ fontSize: 45, color:"#fff"}}/>} 
            className={classes.fav_border}
            checkedIcon={<Favorite sx={{ fontSize: 45}}/>} />
        </Typography>
        <div className={classes.line}/>
      </div>

      <div className={classes.info}>
          <TabInfo/>
      </div>

      <Button 
            variant="contained"
            className={classes.button}
            onClick={handleOpen}>
           Compare
      </Button>
      <Dialog
        open={open} 
        onClose={handleClosed}

        aria-labelledby="keep-mounted-modal-title"
        aria-describedby="keep-mounted-modal-description"
        
        BackdropProps={{ style: { backgroundColor: 'rgba(0,0,0,0.50)', }}}
        PaperProps={{ style: { backgroundColor: 'rgba(0,0,0,0.90)', color:'white' }}}
        >
         <Box >     
            <IconButton style = {{color: 'white', marginLeft: '85%',}} onClick={handleClosed}>
                  <CloseIcon />
            </IconButton>
            <ComparePopup />
              
          </Box>                        
      </Dialog>

      <div className={classes.graph}>
         <Chart />
      </div>
      </Container>

  )
}

export default Stockpage