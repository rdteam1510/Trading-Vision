import http from "../http-common";

class FavoriteDataService {
   
      getAll() {
        return http.get(`/api/favorites`);
      }
    //   addFavoriteStock(userId, CompanyId) {
    //     return http.post(`/api/favorites`, {
    //         UserId: userId,
    //         CompanyId: CompanyId,
    //     } 
    //    );
    //   }
    
    //   deleteFavoriteStock(id){
    //     return http.delete(`/api/favorites/`+ id)
    //   }

}

export default new FavoriteDataService();
