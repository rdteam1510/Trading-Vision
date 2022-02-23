import React, {useState} from 'react';
import {useParams} from 'react-router-dom';
import useStyles from './style'
import {Container, createTheme, ThemeProvider, Typography} from '@material-ui/core'


const Stockpage = () => {
  const classes = useStyles()
  const {ticker} = useParams()
  const [stock, setStock] = useState()

  const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
    },
  });


  return (
  
      <Container className={classes.container}>
      <div className={classes.title}>
        <Typography variant="h6" className={classes.field} >Field</Typography>
        <Typography variant="h4" className={classes.name}>Company Name (Ticker label)</Typography>
        <div className={classes.line}/>
        
      
      </div>

      </Container>
  )
}

export default Stockpage