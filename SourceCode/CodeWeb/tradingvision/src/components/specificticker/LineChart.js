import React from 'react';
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
  
  const data = {
    labels,
    datasets: [
      {
        label: 'ticker - one',
        data:  [617594, 781455, 193060, 106519, 15162, null,null, null, null],
        borderColor: 'rgb(255, 99, 132)',
        backgroundColor: 'rgba(255, 99, 132, 0.5)',
        
      },
      {
        label: 'predict one',
        data:  [null, null,null, null, 15162, 95072, 95072, 181455, 4353],
        borderColor: 'cyan',
        backgroundColor: 'rgba(255, 99, 132, 0.5)',
        
      },
      {
        label: 'ticker - two',
        data:  [87902, 300000, 693060, 200000, 590000, null,null, null, null],
        borderColor: 'rgb(53, 162, 235)',
        backgroundColor: 'rgba(53, 162, 235, 0.5)',
      },
      {
        label: 'predict - two',
        data:  [null, null,null, null, 590000, 25000, 65792, 76890, 109022],
        borderColor: 'yellow',
        backgroundColor: 'rgba(53, 162, 235, 0.5)',
      },
    ],
  };

const LineChart = () => {
    
  return (
    <div>
       <Line options={options} data={data} />
    </div>
  )
}

export default LineChart;