import http from "../http-common"

class StockTableService {
    getAll(page=0){
        return http.get(`?page=${page}`)
    }
    get(stockexchange){
        return http.get(`?StockExchange=${stockexchange}`)
    }
}

export default new StockTableService();