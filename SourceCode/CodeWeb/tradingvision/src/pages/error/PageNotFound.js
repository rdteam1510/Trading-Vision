import { Button, 
         Container, 
         Typography, 
         Box
        } from '@material-ui/core'
import React from 'react'
import useStyles from './style'
import {useNavigate} from "react-router-dom";

const PageNotFound = () => {
    const classes = useStyles()
    const history = useNavigate();
  return (
    <div className={classes.banner}>
        <Container  className={classes.bannerContent}>
            <div className={classes.tagline}>

                <Box className={classes.gif}>
                   
                </Box>
                <Typography
                            variant="h1"
                            style={{
                            fontWeight: "bold",
                            marginBottom: 15,
                            fontFamily: "Montserrat",
                            }}
                        >
                            Oops! 
                        </Typography>
                <Typography
                            variant="h4"
                            style={{
                            fontWeight: "bold",
                            marginBottom: 15,
                            fontFamily: "Montserrat",
                            }}>
                   404 - PAGE NOT FOUND
                </Typography>
                <Button 
                    onClick={() => {history("/");} }
                    variant="outlined"
                    className={classes.btn}>
                    GO TO HOMEPAGE
                </Button>
            </div>
        </Container>

    </div>
  )
}

export default PageNotFound