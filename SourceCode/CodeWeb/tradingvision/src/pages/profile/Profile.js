import { Typography,
        Avatar,
        Grid,
} from '@material-ui/core'
import React from 'react'
import useStyles from './style'

const Profile = ({user}) => {
  const classes = useStyles()


  return (
    <div className={classes.container}>
    <Typography variant="h5" className={classes.title}>
      User Profile
    </Typography>
    <Grid container spacing={2}  className={classes.Grid}>
      <Grid item>
        <Avatar 
        src={user.image} 
        alt="image"
        className={classes.avatar}
        />
      </Grid>
      <Grid item className={classes.info_grid}>
        <Typography gutterBottom component="div" className={classes.info} >
                  {user.displayName}
        </Typography>
        <Typography gutterBottom  className={classes.info}>
          {user.email}
        </Typography>

      </Grid>

    </Grid>
    


    </div>
  )
}

export default Profile