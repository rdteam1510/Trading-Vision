import React, {useState} from 'react';
import {useParams} from 'react-router-dom';
import useStyles from './style'
import {Container,
      Typography,} from '@material-ui/core'
import FavoriteBorderIcon from '@mui/icons-material/FavoriteBorder';
import TabInfo from '../../components/specificticker/TabInfo'


const Stockpage = () => {


  const classes = useStyles()
  const {ticker} = useParams()
  const [stock, setStock] = useState()
 
  return (
  
      <Container className={classes.container}>
      <div className={classes.title}>
        <Typography variant="h6" className={classes.field} >Field</Typography>
        <Typography variant="h4" className={classes.name}>
          Company Name (Ticker label) 
          <FavoriteBorderIcon sx={{ fontSize: 50 }} className={classes.fav_border}/>
        </Typography>
        <div className={classes.line}/>
      </div>

      <div className={classes.info}>
        <TabInfo/> 
      </div>

      </Container>
  )
}

export default Stockpage