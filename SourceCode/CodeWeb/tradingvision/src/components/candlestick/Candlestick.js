import React, { useState, useEffect} from 'react';
import Candle from './Candle';
import './style.css';
import axios from 'axios'
import {useParams} from 'react-router-dom'
import {Container, Typography} from '@material-ui/core'


const Candlestick = () => {
  const {ticker} = useParams()
  const [data, setData] = useState([])
  const [previousData, setPreviousData] = useState([])
  useEffect(() => {
    getData()
    componentDidMount()
  },[])

  const componentDidMount = async() => {
    axios.get(`/api/stocks/query?ticker=${ticker}&limit=1`)
    .then((response) =>{
      setData(response.data.stocks)
    })
  }

  const getData = async() =>{
    axios.get(`/api/forcandlesticks/${ticker}`)
    .then((response) =>{
      setPreviousData(response.data)
    })
  }

  const ohlc = [];
  const volume = [];

  const handleUpdate = e => {
        const chart = e.target;
        chart.navigationBindings.update();
      }

  previousData.map(point => {
    ohlc.push([
      point.Time*1000, // the date
      point.Open, // open
      point.High, // high
      point.Low, // low
      point.Close // close doi thanh cot close sau
    ]);

    volume.push([
      point.Time*1000, // the date
      point.Volume // the volume
    ]);
  })

  data.map(point => {
    ohlc.push([
      point.TimeStamp*1000, // the date
      point.PreviousClose, // open
      point.Highest, // high
      point.Lowest, // low
      point.Match // close doi thanh cot close sau
    ]);

    volume.push([
      point.TimeStamp*1000, // the date
      point.Volume*1000 // the volume
    ]);
  })

  

  console.log(ohlc)
  return (
    <div className="candlestick">
        <Typography style={{fontFamily: 'Montserrat', fontSize:"22px", marginLeft:"40%"}}>{ticker} Candlestick Chart</Typography>
        <Candle ohlc={ohlc} volume={volume} onUpdate={handleUpdate} data={data}/>
    </div>
  )
}
export default Candlestick;
