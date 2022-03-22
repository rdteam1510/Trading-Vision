import React, { useState, useEffect } from 'react'
import ReactHighcharts from 'react-highcharts/ReactHighstock.src'
import moment from 'moment'
import { useParams } from 'react-router-dom';
import axios from 'axios'

// const ReactHighcharts = require('react-highcharts/ReactHighstock');


const LineChart =() =>{
    const compareTicker = 'VIC'
    const {ticker} = useParams()
    const [data, setData] = useState([])
    const [predictions, setPredictions] = useState([])
    const [compare, setCompare] = useState([])
    const [comparePredictions, setComparePredictions] = useState([])
    const priceData =[]
    const predictPrice=[]
    const compareData =[]
    const predictCompare=[]


    useEffect(() => {
      actualPrice()
      currentStockPredictions()
      compareStocks()
      compareStockPredictions()
    },[])
  
    const actualPrice = async() => {
      axios.get(`/api/forpredictions/${ticker}`)
      .then((response) =>{
        setData(response.data)
      })
    }
  
    const currentStockPredictions = async() => {
      axios.get(`/api/predictions/${ticker}`)
      .then((response) =>{
        setPredictions(response.data.prediction)
      })
    }

    const compareStocks = async()=>{
      axios.get(`/api/forpredictions/${compareTicker}`)
      .then((response) =>{
        setCompare(response.data)
      })
    }

    const compareStockPredictions = async() => {
      axios.get(`/api/predictions/${compareTicker}`)
      .then((response) =>{
        setComparePredictions(response.data.prediction)
      })
    }

    // actual price list
    data.map(point => {
        priceData.push([
          point.Time*1000,
          point.Close,])
        
    })
    
    // current stock's prediction price list 
    predictions.map(point => {
      predictPrice.push([
        Date.parse(point.Date),
        point.PredictedPrice
      ])
    })
    priceData.push(predictPrice[0])

    if (compareTicker !== ''){
        // compared ticker's price list
      compare.map(point=>{
        compareData.push([
          point.Time*1000,
          point.Close,])
      })

      // compared stock's prediction price list
      comparePredictions.map(point => {
        predictCompare.push([
          Date.parse(point.Date),
          point.PredictedPrice
        ])
      })
      compareData.push(predictCompare[0])
    }
   

    const options = {currency: 'VND'};
    const numberFormat = new Intl.NumberFormat('en-US', options);
    const configPrice = {
      yAxis: [{
        offset: 20,

        labels: {
          formatter: function () {
            return numberFormat.format(this.value) 
          }
          ,
          x:-15,
          style: {
            "color": "#fff",
            "position": "absolute",
          },
          align: 'left',
        },
        
      },
        
      ],
      tooltip: {
        shared: false,
        // formatter: function () {
        //   return numberFormat.format(this.y, 0) +  '</b><br/>' + moment(this.x).format('MMMM Do YYYY')
        // },
        split: true,
        
      },
      plotOptions: {
        series: {
          showInNavigator: true,
          gapSize: 6,
        
        }
      },
      rangeSelector: {
        selected: 1
        
      },
      title: {
        text: `${ticker} stock price`,
        style: {
          color: '#F2F1F0',
          fontSize: '18px'
        }
      },
      chart: {
        height: 600,
      },
  
      credits: {
        enabled: false
      },
  
      legend: {
        enabled: true,
        itemStyle:{
            color: '#F2F1F0',
            fontSize: '13px'
        },
        itemHoverStyle:{
          color: '#E5E8E8',
        },
      },
      xAxis: {
        type: 'date',
        labels: {
          style: {
            "color": "#F2F1F0",
            "position": "absolute",
          },
        }
      },
      rangeSelector: {
        buttons: [{
          type: 'day',
          count: 1,
          text: '1d',
        }, {
          type: 'day',
          count: 7,
          text: '7d'
        }, {
          type: 'month',
          count: 1,
          text: '1m'
        }, {
          type: 'month',
          count: 3,
          text: '3m'
        },
          {
          type: 'all',
          text: 'All'
        }],
        selected: 4, 
        buttonTheme: {
          fill: "rgba(0,0,0,1)",
          'stroke-width': 0,
          style: {
            color: 'grey',
        },
        states: {
            hover: {
            },
            select: {
                fill: '#FD7F20',
                style: {
                    color: '#fff',
                    fontWeight: 'bold'
                }
            }
        }},
        inputStyle: {
          color: 'grey',
          fontWeight: 'bold'
      },
      
      },
      series: [{
        name: `${ticker} `,
        type: 'spline',
  
        data: priceData,
        tooltip: {
          valueDecimals: 2
        },
        color: '#04F9F2',
  
      },
      {
        name: `${ticker} Predicted Price`,
        type: 'spline',
  
        data: predictPrice,
        tooltip: {
          valueDecimals: 2
        },
        color: '#CFE9EF',
  
      },
      {
        name: `${compareTicker}`,
        type: 'spline',
  
        data: compareData,
        tooltip: {
          valueDecimals: 2
        },
        color: '#F51663',
  
      },
      {
        name: `${compareTicker} Predicted Price`,
        type: 'spline',
  
        data: predictCompare,
        tooltip: {
          valueDecimals: 2
        },
        color: '#EAC5B0',
  
      }
      ],
      
    };

    const configPriceWithoutCompare = {
      
      yAxis: [{
        offset: 20,

        labels: {
          formatter: function () {
            return numberFormat.format(this.value) 
          }
          ,
          x:-15,
          style: {
            "color": "#fff",
            "position": "absolute",
          },
          align: 'left',
        },
        
      },
        
      ],
      tooltip: {
        shared: false,
        // formatter: function () {
        //   return numberFormat.format(this.y, 0) +  '</b><br/>' + moment(this.x).format('MMMM Do YYYY')
        // },
        split: true,
        
      },
      plotOptions: {
        series: {
          showInNavigator: true,
          gapSize: 6,
        
        }
      },
      rangeSelector: {
        selected: 1
        
      },
      title: {
        text: `${ticker} stock price`,
        style: {
          color: '#F2F1F0',
          fontSize: '18px'
        }
      },
      chart: {
        height: 600,
      },
  
      credits: {
        enabled: false
      },
  
      legend: {
        enabled: true,
        itemStyle:{
            color: '#F2F1F0',
            fontSize: '13px'
        },
        itemHoverStyle:{
          color: '#E5E8E8',
        },
      },
      xAxis: {
        type: 'date',
        labels: {
          style: {
            "color": "#F2F1F0",
            "position": "absolute",
          },
        }
      },
      rangeSelector: {
        buttons: [{
          type: 'day',
          count: 1,
          text: '1d',
        }, {
          type: 'day',
          count: 7,
          text: '7d'
        }, {
          type: 'month',
          count: 1,
          text: '1m'
        }, {
          type: 'month',
          count: 3,
          text: '3m'
        },
          {
          type: 'all',
          text: 'All'
        }],
        selected: 4, 
        buttonTheme: {
          fill: "rgba(0,0,0,1)",
          'stroke-width': 0,
          style: {
            color: 'grey',
        },
        states: {
            hover: {
            },
            select: {
                fill: '#FD7F20',
                style: {
                    color: '#fff',
                    fontWeight: 'bold'
                }
            }
        }},
        inputStyle: {
          color: 'grey',
          fontWeight: 'bold'
      },
      
      },
      series: [{
        name: `${ticker} `,
        type: 'spline',
  
        data: priceData,
        tooltip: {
          valueDecimals: 2
        },
        color: '#04F9F2',
  
      },
      {
        name: `${ticker} Predicted Price`,
        type: 'spline',
  
        data: predictPrice,
        tooltip: {
          valueDecimals: 2
        },
        color: '#CFE9EF',
  
      },]
    };
    return (
      <div>
      {compareTicker === '' ? (
        <ReactHighcharts config = {configPriceWithoutCompare}></ReactHighcharts>
      ):(
        <ReactHighcharts config = {configPrice}></ReactHighcharts>
      )}
        
      </div>
    )
  }


export default LineChart
