import React, { useState, useEffect} from 'react';
import Candle from './Candle';
import './style.css';
import axios from 'axios'
import {useParams} from 'react-router-dom'


const Candlestick = () => {
  const {ticker} = useParams()
  const [data, setData] = useState([])
  
  useEffect(() => {
    componentDidMount()
  },[])

  const componentDidMount = async() => {
    axios.get(`/api/stocks/${ticker}`)
    .then((response) =>{
      setData(response.data.stock)
    })
  }

  const ohlc = [];
  const volume = [];

  const handleUpdate = e => {
        const chart = e.target;
        chart.navigationBindings.update();
      }
  data.map(point => {
    ohlc.push([
      point.TimeStamp, // the date
      point.PreviousClose, // open
      point.Highest, // high
      point.Lowest, // low
      point.Match // close doi thanh cot close sau
    ]);

    volume.push([
      point.TimeStamp, // the date
      point.Volume // the volume
    ]);
  })
  console.log(ohlc)
  return (
    <div className="candlestick">
         <Candle ohlc={ohlc} volume={volume} onUpdate={handleUpdate} data={data}/>
    </div>
  )
}
export default Candlestick;
