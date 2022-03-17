import { Typography,
        Avatar,
        Grid,
        Button,
} from '@material-ui/core'
import React, { useState } from 'react'
import useStyles from './style'
import HighlightOffIcon from '@mui/icons-material/HighlightOff';


const Profile = ({user}) => {
  const classes = useStyles()
  
  return (
    <div className={classes.container}>

    {user ? (
      <>
        <Typography variant="h5" className={classes.title}>
          User Profile
        </Typography>
        <Grid container spacing={2}  className={classes.Grid}>
          <Grid item alignItems="center">
          <Avatar 
            src={user.image} 
            alt="image"
            className={classes.avatar}
            />
          </Grid>
          <Grid item className={classes.info_grid}>
            <Typography gutterBottom className={classes.username} >
                      {user.displayName}
            </Typography>
            <Typography gutterBottom  className={classes.info}>
              {user.email}
            </Typography>

          </Grid>

        </Grid>
        <div className={classes.delete_account}>
        <Grid container spacing={2}  className={classes.Grid_delete}>
          <Grid item align="center">
            <HighlightOffIcon
            sx={{fontSize: 90}}
            />
            <Typography className={classes.delete_title}>
              Delete Account
            </Typography>
          </Grid>
          <Grid item className={classes.delete_warning}>
            <Typography className={classes.delete_permanent} >
                      Permanently delete 
            </Typography>
            <Typography className={classes.warning}>
                      Be careful - All of your data and information will be deleted.
            </Typography>
            <Button className={classes.btn}> Delete All</Button>

          </Grid>

        </Grid>

        </div>

    </>

    ):(
      <></>
    )}
    
    


    </div>
  )
}

export default Profile