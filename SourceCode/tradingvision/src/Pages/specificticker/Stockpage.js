import React, {useState} from 'react';
import {useParams} from 'react-router-dom';
import useStyles from './style'
import {Container,
      Typography,
      Button,
      Checkbox,
      Menu,
      MenuItem,
      IconButton,
      List,
      ListItem,
      ListItemText
    } from '@material-ui/core'
import TabInfo from '../../components/specificticker/TabInfo'
import LineChart from '../../components/specificticker/LineChart';
import ComparePopup from '../../components/compare/ComparePopup';
import Modal from '@mui/material/Modal';
import FavoriteBorderIcon from '@mui/icons-material/FavoriteBorder';
import Favorite from '@mui/icons-material/Favorite';
import SettingsIcon from '@mui/icons-material/Settings';
import CandlestickChart from '../../components/specificticker/CandlestickChart';

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

      <div className={classes.graph}>
         <Button 
            variant="contained"
            className={classes.button}
            onClick={handleOpen}>
           Compare
         </Button>
        <LineChart/>
        
      </div>
      <Modal 
        open={open} 
        onClose={handleClosed}

        aria-labelledby="keep-mounted-modal-title"
        aria-describedby="keep-mounted-modal-description"
        style={{ alignItems: "center", justifyContent: "center", paddingTop: 100}}
        BackdropProps={{ style: { backgroundColor: 'rgba(0,0,0,0.93)', }}}
        
        >
          <ComparePopup onClick={handleClosed}/>
      </Modal>
      </Container>
  )
}

export default Stockpage