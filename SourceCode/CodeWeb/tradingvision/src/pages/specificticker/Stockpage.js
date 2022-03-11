import React, {useState, useEffect} from 'react';
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
import axios from 'axios';
import { useParams } from 'react-router-dom';

const Stockpage = () => {


  const classes = useStyles()

  const [open, setOpen] = React.useState(false);
  const handleOpen = () => setOpen(true);
  const handleClosed = () => setOpen(false);
  const label = { inputProps: { 'aria-label': 'Checkbox favorite' } }; 
  const [selectedID, setSelectedID] = React.useState(null)
  const {ticker} = useParams();
  const [company, setCompany] = useState([]);
  // 
  useEffect(() => {
    componentDidMount()
  },[])

  const componentDidMount = async() =>{
     axios.get(`/api/companyinfo/${ticker}`)
     .then((response)=>{
        console.log(response.data);
        setCompany(response.data.companyinfo)
        
     })
  }
  

  return (

      <Container className={classes.container}>
      <div className={classes.title}>
      {company.map(info =>(
        <>
        <Typography 
          variant="h6" 
          className={classes.field}
         > {info.Industry}
        </Typography>
        <Typography 
          variant="h5" 
          className={classes.name}>
            {info.CompanyName} ({info.Ticker})
          <Checkbox {...label} 
            icon={<FavoriteBorderIcon sx={{ fontSize: 45, color:"#fff"}}/>} 
            className={classes.fav_border}
            checkedIcon={<Favorite sx={{ fontSize: 45}}/>} />
        </Typography>
        <div className={classes.line}/>

          <div className={classes.info}>
              <TabInfo info={info}/>
          </div>
        </>
      ))}
        
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
            <ComparePopup selectedID = {selectedID} setSelectedID = {setSelectedID} />
              
          </Box>                        
      </Dialog>

      <div className={classes.graph}>
         <Chart />
      </div>
      </Container>

  )
}

export default Stockpage