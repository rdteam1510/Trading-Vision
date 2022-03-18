import React, { Component, useState, useEffect } from 'react'
import ReactHighcharts from 'react-highcharts/ReactHighstock.src'
import moment from 'moment'
import { useParams } from 'react-router-dom';
import axios from 'axios'

const Line =() =>{
    const {ticker} = useParams()
    const [data, setData] = useState([])
    const [predictions, setPredictions] = useState([])
    useEffect(() => {
      componentDidMount()
      componentDidMountPredictions()
    },[])
  
    const componentDidMount = async() => {
      axios.get(`/api/forpredictions/${ticker}`)
      .then((response) =>{
        setData(response.data)
      })
    }
  
    const componentDidMountPredictions = async() => {
      axios.get(`/api/predictions/${ticker}`)
      .then((response) =>{
        setPredictions(response.data.prediction)
      })
    }
    console.log(predictions);
    const priceData =[]
    data.map(point => {
        priceData.push([
          point.Time*1000,
          point.Close,])
        
    })
    const predictPrice=[]
    predictions.map(point => {
      predictPrice.push([
        Date.parse(point.Date),
        point.PredictedPrice
      ])
    })
    priceData.push(predictPrice[0])
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
        shared: true,
        formatter: function () {
          return numberFormat.format(this.y, 0) +  '</b><br/>' + moment(this.x).format('MMMM Do YYYY')
        }
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
          style: {
            color: 'grey',
            fontWeight: 'bold'
        },
        states: {
            hover: {
            },
            select: {
                fill: 'white',
                style: {
                    color: 'black'
                }
            }
        }},
        inputStyle: {
          color: 'grey',
          fontWeight: 'bold'
      },
      
      },
      series: [{
        name: `${ticker} Price`,
        type: 'spline',
  
        data: priceData,
        tooltip: {
          valueDecimals: 2
        },
        color: '#59D7EE',
  
      },
      {
        name: `${ticker} Predicted Price`,
        type: 'spline',
  
        data: predictPrice,
        tooltip: {
          valueDecimals: 2
        },
        color: '#D3F4FB',
  
      }
      ]
    };
    return (
      <div>
         <ReactHighcharts config = {configPrice}></ReactHighcharts>
      </div>
    )
  }


export default Line
