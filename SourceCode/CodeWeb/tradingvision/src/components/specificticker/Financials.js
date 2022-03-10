import { Grid, 
          Typography } from '@material-ui/core';
import React from 'react';
import useStyles from "./style";


const Financials = ({info}) => {
    const classes = useStyles()

    const details = {
      outstanding: info.OutstandingShares,
      pe: info['P/E'],
      roa: info.ROA,
      roe: info.ROE,
      totalassets: info.TotalAssets,
      basicEPS: info.BasicEPS,
      dilutedEPS: info.DilutedEPS,
      bookValue: info.BookValue,
      listedShares: info.ListedShares,

    }
    
  return (
    <div className={classes.financials}>
    <Grid container spacing={2}
      columnSpacing={{ xs: 1, sm: 3, md: 3 }}>
      <Grid container className={classes.grid} item xs >
              <Grid item xs container spacing={2}>
                <Grid item xs >
                  <Typography
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      Outstanding Shares:
                  </Typography>
                  <Typography
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      Listed Shares:
                  </Typography>
                  <Typography
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      Book Value:
                  </Typography>
                  <Typography 
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      ROA :
                  </Typography>
                  <Typography 
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      ROE :
                  </Typography>

                </Grid>
            </Grid>

            <Grid item xs container 
                  className={classes.grid_info_finanical} >
            <Grid item xs>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    {details.outstanding}
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    {details.listedShares}
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    {details.bookValue}
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    {details.roa}
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    {details.roe}
                </Typography>

              </Grid>
            </Grid>
          </Grid>

          <Grid container spacing={2} className={classes.grid} item xs>
              <Grid item xs container spacing={2}>
                <Grid item xs >

                  <Typography
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      Total Assets:
                  </Typography>
                  
                  <Typography
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      EPS Diluted:
                  </Typography>
                  <Typography 
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      Basic EPS:
                  </Typography>
                  <Typography 
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      P/E :
                  </Typography>
                  
            
              </Grid>
            <Grid item xs container 
                  className={classes.grid_info_finanical} >
            <Grid item xs>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    {details.totalassets}
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    {details.dilutedEPS}
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    {details.basicEPS}
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    {details.pe}
                </Typography>
              </Grid>
            </Grid>
            </Grid>
        </Grid>
      </Grid>

      {/* <List className={classes.note}>
        <ListItem>
          <CircleIcon sx={{ fontSize: 8}}/>
          <Typography className={classes.note_info}>
          VND</Typography>
        </ListItem>

      </List> */}
    </div>
      

  )
}

export default Financials