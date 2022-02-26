import { Typography,
          Grid
        } from '@material-ui/core';
import React from 'react';
import useStyles from './style';


const Profile = () => {
    const classes = useStyles()

  return (
    <div className={classes.profile}>
      <Typography variant='body1' 
        className={classes.description}>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
        incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
        sed do eiusmod tempor incididunt ut labore et dolore magna dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
      </Typography>

      <Grid container spacing={2} className={classes.grid}>
            <Grid item xs container spacing={2}>
              <Grid item xs >
                <Typography 
                  gutterBottom 
                  variant="subtitle1" 
                  className={classes.item}
                  style={{fontWeight: 'bold'}}>
                    Market Capital:
                </Typography>
                <Typography 
                  gutterBottom 
                  variant="subtitle1" 
                  className={classes.item}
                  style={{fontWeight: 'bold'}}>
                    Address:
                </Typography>
                <Typography 
                  gutterBottom 
                  variant="subtitle1" 
                  className={classes.item}
                  style={{fontWeight: 'bold'}}>
                    Website:
                </Typography>
              </Grid>
          </Grid>

          <Grid item xs container 
                className={classes.grid_info}>
          <Grid item xs>
              <Typography 
                variant="subtitle1" 
                gutterBottom
                className={classes.item}>
                  1xxxxxxx
              </Typography>

              <Typography 
                variant="subtitle1" 
                gutterBottom
                className={classes.item}>
                  Lorem ipsum
              </Typography>

              <Typography 
                variant="subtitle1" 
                gutterBottom
                className={classes.item}>
                  Lorem ipsum
              </Typography>
            </Grid>
          </Grid>
        </Grid>
      
    </div>
  )
}

export default Profile