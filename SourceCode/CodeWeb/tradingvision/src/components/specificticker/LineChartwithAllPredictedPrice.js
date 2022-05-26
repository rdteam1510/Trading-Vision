import React, { useState, useEffect } from 'react'
import ReactHighcharts from 'react-highcharts/ReactHighstock.src'
import { useParams } from 'react-router-dom';
import axios from 'axios'
import {CircularProgress} from '@material-ui/core'
import useStyles from './style'
import 'react-toastify/dist/ReactToastify.css';


const LineChartwithAllPredictedPrice =() =>{
   
    const {ticker} = useParams()
    const [data, setData] = useState([])
    const [predictions, setPredictions] = useState([])

    const [loading, setLoading] = useState([])
    const [allPredictions, setAllPredictions] = useState([])
    const priceData =[]
    var predictPrice=[]

    const allPredictPrice =[]
    const classes = useStyles()
    
    //Get data off current stock
    useEffect( async () => {
    await actualPrice()
    await currentStockPredictions()
      getAllPredictions()
    },[])
    // Add values for popup
    const [values, setValues] = useState({
      title: "",
      content: "",
      ticker: "",
      time: "",
    });
    //get data of compared stock
    
    const actualPrice = async() => {
      setLoading(true)
      axios.get(`/api/forpredictions/${ticker}`)
      .then((response) =>{
        setData(response.data)
        setLoading(false)
      })
    }
  
    const currentStockPredictions = async() => {
      setLoading(true)
      axios.get(`/api/predictions/${ticker}`)
      .then((response) =>{
        setPredictions(response.data.prediction)
        setLoading(false)
      })
    }

    const getAllPredictions = async () => {
      setLoading(true)
      axios.get(`/api/predictions/all/${ticker}`)
      .then((response) =>{
        setAllPredictions(response.data.prediction)
        setLoading(false)
      })
    }

   

    // actual price list
    data.map(point => {
        priceData.push([
          point.Time*1000,
          point.Close,])
        
    })
    //allPredictions
    allPredictions.map(point => {
        allPredictPrice.push([
          point.Date*1000,
          point.PredictedPrice])
    })
    
    // current stock's prediction price list 
    predictions.map(point => {
      predictPrice.push([
        point.Date*1000,
        point.PredictedPrice
      ])
    })

  

    // priceData.push(predictPrice[0])
    var temp = priceData[priceData.length - 1]
    predictPrice.unshift(temp)
  
    const options = {currency: 'VND'};
    const numberFormat = new Intl.NumberFormat('en-US', options);
 
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
            fontFamily: "Montserrat",
          },
          align: 'left',
        },
        
      },
        
      ],
      tooltip: {
        shared: false,
        split: true,
        fontFamily: "Montserrat",
        
      },
      
      plotOptions: {
        
        series: {
          showInNavigator: true,
          gapSize: 6,
          cursor: 'pointer',
        },

      },
      rangeSelector: {
        selected: 1
        
      },
      title: {
        text: `${ticker} stock price`,
        style: {
          color: '#F2F1F0',
          fontSize: '18px',
          fontFamily: "Montserrat",
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
            fontSize: '13px',
            fontFamily: "Montserrat",
        },
        itemHoverStyle:{
          color: '#E5E8E8',
          fontFamily: "Montserrat",
        },
      },
      xAxis: {
        type: 'datetime',
        labels: {
          style: {
            "color": "#F2F1F0",
            "position": "absolute",
            fontFamily: "Montserrat",
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
              fill: '#FD7924',
              style: {
                color: '#fff',
                fontFamily: "Montserrat",
            }
            },
            select: {
                fill: '#FF9936',
                style: {
                    color: '#fff',
                    fontWeight: 'bold',
                    fontFamily: "Montserrat",
                }
            }
        }},
        inputStyle: {
          color: 'grey',
          fontWeight: 'bold',
          fontFamily: "Montserrat",
        },
      
      },
 
      series: [{
        name: `${ticker} `,
        type: 'areaspline',
        fontFamily: "Montserrat",
        data: priceData,
        tooltip: {
          valueDecimals: 2
        },
        color: '#A0E7E5',
        
  
      },
      // {
      //   name: `${ticker} Predicted Price`,
      //   type: 'spline',
      //   linkedTo: ':previous',
      //   data: predictPrice,
      //   tooltip: {
      //     valueDecimals: 2
      //   },
      //   color: '#F51720',
      //   fontFamily: "Montserrat",
      
      // },
      {
        name: `${ticker} All Predicted Price`,
        
        type: 'spline',
        lineWidth: 0.7,
        // linkedTo: ':previous',
        fillOpacity: 0.3,
        data: allPredictPrice,
        tooltip: {
          valueDecimals: 2
        },
        color: '#F51720',
        fontFamily: "Montserrat",
      
      }
    ],
      
    };
    return (
      <div>
        {loading ? (
          <div className={classes.loading_spinner}>
              <CircularProgress style={{ backgroundColor: "primary" }}/>
            </div>
        ):(
          <div className={classes.line_chart_div}>
            <ReactHighcharts config = {configPriceWithoutCompare}></ReactHighcharts>
            
          </div>
        )}
      
      </div>
    )
  }


export default LineChartwithAllPredictedPrice
