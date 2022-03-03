import React from 'react'
import { createContext, useContext } from 'react'

const Stock = createContext()

const StockContext = ({children}) => {
  return (
    <Stock.Provider>
        {children} 
    </Stock.Provider>
  )
}

export default StockContext

export const StockState = () => {
    useContext(Stock)
}
