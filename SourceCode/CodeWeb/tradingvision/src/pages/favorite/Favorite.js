import React, {useState, useEffect} from 'react'
import FavoriteInfo from '../../components/favorite/FavoriteInfo'
import FavoriteEmpty from '../../components/favorite/FavoriteEmpty'
import Login from '../login/Login'
import axios from 'axios'


const Favorite = ({user}) => {
  const [favorites, setFavorite] = useState([])

  useEffect(() =>{
    getFavorite()
  },[])

  const getFavorite = async() =>{
    await axios.get(`/api/favorite`)
    .then((response) =>{
      setFavorite(response.data)
    })
  }
  console.log(favorites)
  return (
    <div>
      {user ? (
      <div>
        <FavoriteInfo />
      </div>
    ) : (
      <Login/>
    )}
    </div>
    
    
  )
}

export default Favorite