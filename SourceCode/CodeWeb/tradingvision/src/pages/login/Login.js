import React from 'react'
import {useEffect} from 'react'

const Login = () => {
  
  useEffect(() => {
    google()
  },[])
  const google = () => {
    window.open("http://localhost:4040/auth/google", "_self");
  };


  return (
    <div >
     
    </div>
  )
}

export default Login