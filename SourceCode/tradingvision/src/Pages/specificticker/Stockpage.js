import React, {useState} from 'react';
import {useParams} from 'react-router-dom';
import useStyles from './style'
import {Container,
      Typography,
      Button,
    } from '@material-ui/core'
import FavoriteBorderIcon from '@mui/icons-material/FavoriteBorder';
import TabInfo from '../../components/specificticker/TabInfo'
import LineChart from '../../components/specificticker/LineChart';


const Stockpage = () => {


  const classes = useStyles()
  const {ticker} = useParams()
  const [stock, setStock] = useState()
 
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
          <FavoriteBorderIcon sx={{ fontSize: 50 }} className={classes.fav_border}/>
        </Typography>
        <div className={classes.line}/>
      </div>

      <div className={classes.info}>
        <TabInfo/> 
        
      </div>

      <div className={classes.graph}>
         <Button 
            variant="contained"
            className={classes.button}>
           Compare
         </Button>
         <LineChart/>
      </div>

      </Container>
  )
}

export default Stockpage