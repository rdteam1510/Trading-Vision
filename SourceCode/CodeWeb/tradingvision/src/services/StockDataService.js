import http from "../http-common";

class StockDataService {
  getAll(stockExchange) {
    return http.get(`/api/stocks/${stockExchange}`);
  }
  
 
}

export default new StockDataService();