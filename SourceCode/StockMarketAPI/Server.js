var axios = require("axios").default;

var options = {
    method: 'GET',
    url: 'https://latest-stock-price.p.rapidapi.com/price',
    params: {Indices: '<REQUIRED>'},
    headers: {
      'x-rapidapi-host': 'latest-stock-price.p.rapidapi.com',
      'x-rapidapi-key': '74fd6cfa26msh2f544aa72386777p1f4e80jsna238aaa99692'
    }
  };
  axios.request(options).then(function (response) {
    var dataFromResponse = response.data;
    console.log(dataFromResponse);
   }).catch(function (error) {
    console.error(error);
   });


   