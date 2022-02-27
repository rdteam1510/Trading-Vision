import { Grid, Typography } from '@material-ui/core';
import React from 'react';
import useStyles from "./style";


const Financials = () => {
    const classes = useStyles()

    
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
                      P/E (TTM):
                  </Typography>
                  <Typography 
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      P/B (FY):
                  </Typography>
                  <Typography 
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      P/S (FY):
                  </Typography>
                  <Typography 
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      ROA (TTM):
                  </Typography>
                  <Typography 
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      ROE (TTM):
                  </Typography>
                  <Typography 
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      Basic EPS (FY):
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
                    xxx
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    xxx
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    xxx
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    xxx
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    xxx
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    xxx
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    xxx
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
                      Net Debt (MRQ):
                  </Typography>
                  <Typography
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      Total Debt (MRQ):
                  </Typography>
                  <Typography
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      Total Assets (MRQ):
                  </Typography>
                  <Typography
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      Net Income (FY):
                  </Typography>
                  <Typography
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      Gross Profit (FY):
                  </Typography>
                  <Typography
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      Total Revenue (FY): 
                  </Typography>
                  <Typography
                    gutterBottom 
                    variant="subtitle1" 
                    className={classes.item}
                    style={{fontWeight: 'bold'}}>
                      EPS Diluted(FY):
                  </Typography>
              </Grid>
            <Grid item xs container 
                  className={classes.grid_info_finanical} >
            <Grid item xs>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    xxx
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    xxx
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    xxx
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    xxx
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    xxx
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    xxx
                </Typography>
                <Typography 
                  variant="subtitle1" 
                  gutterBottom
                  className={classes.value}>
                    xxx
                </Typography>
              </Grid>
            </Grid>
            </Grid>
        </Grid>
      </Grid>
    </div>
  )
}

export default Financials