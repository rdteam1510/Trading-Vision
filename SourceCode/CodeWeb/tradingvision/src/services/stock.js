import http from "../http-common"

class StockTableService {
    getAll(page=0){
        return http.get(`?page=${page}`)
    }
    get(ticker){
        return http.get(`?ticker=${ticker}`)
    }
}

export default new StockTableService();