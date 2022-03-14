import React, {useState, useEffect} from 'react';
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  PointElement,
  LineElement,
  Title,
  Tooltip,
  Legend,
} from 'chart.js';
import { Line } from 'react-chartjs-2';
import axios from 'axios';
import { useParams } from 'react-router-dom';

ChartJS.register(
    CategoryScale,
    LinearScale,
    PointElement,
    LineElement,
    Title,
    Tooltip,
    Legend
  );

  const options = {
    responsive: true,
    plugins: {
      legend: {
        position: 'top',
      },
      title: {
        display: true,
        text: 'Chart.js Line Chart',
      },
 

    },
  };

   const labels = ['January', 'February', 'March', 'April', 'May', 'June', 'July','August','September'];
  
  

  

const LineChart = () => {
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

  const labels = data.map(dt => 
    // dt.TimeStamp
    (new Date(dt.TimeStamp*1000)).toLocaleDateString('en-US')
    )
  // const date = ['2022-07-01', '2022-07-02', '2022-07-04', '2022-07-05', '2022-07-06', '2022-07-07', '2022-07-08', '2022-07-09', '2022-07-10', '2022-07-11', '2022-07-12', '2022-07-13', '2022-07-14']

  const price = data.map(dt =>dt.Lowest)

  const info = {
    labels,
    datasets: [
      {
        label: 'ticker - one',
        data:  price,
        borderColor: 'rgb(255, 99, 132)',
        backgroundColor: 'rgba(255, 99, 132, 0.5)',
        
      },
      // {
      //   label: 'predict one',
      //   data:  [null, null,null, null, 15162, 95072, 95072, 181455, 4353],
      //   borderColor: 'cyan',
      //   backgroundColor: 'rgba(255, 99, 132, 0.5)',
        
      // },
      // {
      //   label: 'ticker - two',
      //   data:  [87902, 300000, 693060, 200000, 590000, null,null, null, null],
      //   borderColor: 'rgb(53, 162, 235)',
      //   backgroundColor: 'rgba(53, 162, 235, 0.5)',
      // },
      // {
      //   label: 'predict - two',
      //   data:  [null, null,null, null, 590000, 25000, 65792, 76890, 109022],
      //   borderColor: 'yellow',
      //   backgroundColor: 'rgba(53, 162, 235, 0.5)',
      // },
    ],
  };

  return (
    <div>
       <Line options={options} data={info} />
    </div>
  )
}

export default LineChart;