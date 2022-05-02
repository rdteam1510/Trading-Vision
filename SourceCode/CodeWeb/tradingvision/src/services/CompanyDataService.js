import http from "../http-common";

class CompanyDataService {
  getInfo(ticker) {
    return http.get(`/api/companyinfo/${ticker}`);
  }
  
  
}

export default new CompanyDataService();