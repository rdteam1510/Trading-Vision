import React, {useState} from 'react';
import {useParams} from 'react-router-dom';
import { makeStyles } from '@material-ui/core/styles';


const useStyles = makeStyles(()=>({

}))

const Stockpage = () => {
  const classes = useStyles()
  const {ticker} = useParams()
  const [stock, setStock] = useState()

  return (
    <div>
      <div>
        
      </div>
    </div>
    
  )
}

export default Stockpage