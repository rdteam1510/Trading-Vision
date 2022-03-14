import { Button, Container, Typography } from '@material-ui/core'
import React from 'react'
import useStyles from './style'
import FacebookIcon from '@mui/icons-material/Facebook';
import GoogleIcon from '@mui/icons-material/Google';

const Login = () => {
  const classes = useStyles()
  return (
    <div className={classes.container}>
      <Container className={classes.content}>
        <Typography className={classes.title}> SIGN IN</Typography>
        <div className={classes.line}></div>
        <div className={classes.Facebook}>
          <Button 
            variant="outlined"
            className={classes.btn_fb}>
            <FacebookIcon className={classes.icon} style={{fontSize:'35px'}}/>
            SIGN IN WITH FACEBOOK
          </Button>
        </div>
        <div className={classes.Google}>
          <Button 
            variant="outlined"
            className={classes.btn_gg}>
            <GoogleIcon className={classes.icon} style={{fontSize:'35px'}}/>
            SIGN IN WITH GOOGLE
          </Button>
        </div>

      </Container>
    </div>
  )
}

export default Login