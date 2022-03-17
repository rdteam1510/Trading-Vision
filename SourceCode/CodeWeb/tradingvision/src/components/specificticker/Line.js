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
      axios.get(`/api/stocks/${ticker}`)
      .then((response) =>{
        setData(response.data.stock)
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
    predictions.map(point => {
        priceData.push([
          Date.parse(point.Date),
          point.PredictedPrice])
        
    })
    console.log(priceData);
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
          x: -15,
          style: {
            "color": "#000", "position": "absolute"

          },
          align: 'left'
        },
      },
        
      ],
      tooltip: {
        shared: true,
        formatter: function () {
          return numberFormat.format(this.y, 0) +  '</b><br/>' + moment(this.x).format('MMMM Do YYYY, h:mm')
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
        text: `${ticker} stock price`
      },
      chart: {
        height: 600,
      },
  
      credits: {
        enabled: false
      },
  
      legend: {
        enabled: true
      },
      xAxis: {
        type: 'date',
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
        selected: 4
      },
      series: [{
        name: 'Price',
        type: 'spline',
  
        data: priceData,
        tooltip: {
          valueDecimals: 2
        },
  
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
