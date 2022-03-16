import React, { useState, useEffect } from 'react';
import Candle from './Candle';
import './style.css';
import axios from 'axios'
import {useParams} from 'react-router-dom'
// class Candlestick extends Component {
//   state = {
//     ohlc: [],
//     volume: []
//   };

//   componentDidMount () {
//     fetch('https://rawcdn.githack.com/highcharts/highcharts/1a37c045270770251ac68b963614ebcca9b0f5d8/samples/data/aapl-ohlcv.json')
//       .then(res => {
//         if (!res.ok) {
//           console.log('No data')
//           return []
//         }
//         return res.json()
//       })
//       .then(data => {
//         // split the data set into ohlc and volume
//         const ohlc = [];
//         const volume = [];

//         data.forEach(point => {
//           ohlc.push([
//             point[0], // the date
//             point[1], // open
//             point[2], // high
//             point[3], // low
//             point[4] // close
//           ]);

//           volume.push([
//             point[0], // the date
//             point[5] // the volume
//           ]);
//         })

//         this.setState({
//           ohlc,
//           volume
//         })
//       })
//   }
  
//   handleUpdate = e => {
//     const chart = e.target;
//     chart.navigationBindings.update();
//   }
  
//   render () {
//     const { ohlc, volume } = this.state
//     if (ohlc.length === 0) return null
//     console.log(ohlc)
//     return (
//       <div className="candlestick">
//         <Candle ohlc={ohlc} volume={volume} onUpdate={this.handleUpdate} />
//       </div>
//     );
//   }
// }

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
