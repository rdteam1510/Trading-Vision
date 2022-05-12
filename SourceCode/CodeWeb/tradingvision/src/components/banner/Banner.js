import React from 'react'
import {Container, Typography} from '@material-ui/core'
import useStyles from './style';

const Banner = () => {
    const classes = useStyles();
    return (
        <div className={classes.banner}>
            <Container className={classes.bannerContent}>
                <div className={classes.tagline}>
                <Typography
                    variant="h4"
                    style={{
                    fontWeight: "bold",
                    marginBottom: 15,
                    fontFamily: "Montserrat",
                    }}
                >
                    Stock Prices by Market Cap
                </Typography>
                </div>
            </Container>
        </div>
    )
}

export default Banner