import { Typography,
  Grid,
  Link,
} from '@material-ui/core';
import React from 'react';
import useStyles from './style';


const Profile = ({info}) => {
const classes = useStyles()
const details = {
  address: info.Address,
  info: info.Info,
  website: info.Website,
  marketcap: info.MarketCapitalization,
}


return (
<div className={classes.profile}>

  <Typography variant='body1' 
    className={classes.description}> {details.info}
  </Typography>


<Grid container className={classes.grid}>
    <Grid item xs container spacing={2}>
      <Grid item xs >
        <Typography 
          gutterBottom 
          variant="subtitle1" 
          className={classes.item}
          style={{fontWeight: 'bold'}}>
            Market Capital (Billions VND):
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
        className={classes.value}> {details.marketcap}
      </Typography>

      <Typography 
        variant="subtitle1" 
        gutterBottom
        className={classes.value}>
          {details.address}
      </Typography>

      <Link
        to={{pathname: details.website}} target="_blank"
        className={classes.value}>
          {details.website}
      </Link>
    </Grid>
  </Grid>
</Grid>

</div>
)
}

export default Profile