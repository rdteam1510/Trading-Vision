import { makeStyles } from '@mui/material';
import React from 'react'
import { useState } from "react";
import { useParams } from "react-router-dom";
import { CoinInfo } from "../components/coin/CoinInfo"

function CoinPage() {
    const { id } = useParams();
    const [coin, setCoin] = useState();
    
    const useStyles = makeStyles(() => ({
        container: {
            display: "flex",
            [theme.breakpoints.down("md")]: {
                flexDirection: "column",
                alignItems: "center",
            }
        }
    }))
    const classes = useStyles();

    return (
        <div className = {classes.container}>
            <div className={classes.sidebar}>

            </div>
            {/* Chart */}
            <CoinInfo coin = {coin} />
        </div>
    )

    return (
    <div>CoinPage</div>
  )
}

export default CoinPage