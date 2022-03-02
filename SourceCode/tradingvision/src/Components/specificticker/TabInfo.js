import React from 'react'
import { TabContext, TabList, TabPanel } from '@material-ui/lab';
import {Tab, Divider, Typography, FormControlLabel, Switch} from '@material-ui/core'
import Profile from './Profile'
import Financials from './Financials'
import useStyles from './style'
import IconButton from '@mui/material/IconButton';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';
import { styled } from '@mui/material/styles';
import Collapse from '@mui/material/Collapse';

const ExpandMore = styled((props) => {
  const { expand, ...other } = props;
  return <IconButton {...other} />;
})(({ theme, expand }) => ({
  transform: !expand ? 'rotate(-90deg)' : 'rotate(0deg)',
  marginLeft: 'auto',
  transition: theme.transitions.create('transform', {
    duration: theme.transitions.duration.shortest,
  }),
}));


const TabInfo = () => {

  const [value, setValue] = React.useState('1');
  const handleChange = (event, newValue) => {
      setValue(newValue);
    };
  const classes = useStyles();
  const [expanded, setExpanded] = React.useState(true);

  const handleExpandClick = () => {
    setExpanded(!expanded);
  };

  return (
    <>
    {/* <ExpandMore
    expand={expanded}
    onClick={handleExpandClick}
    aria-expanded={expanded}
    aria-label="show more">
    <ExpandMoreIcon sx={{ fontSize: 45, color:"#fff"}}/>
  </ExpandMore> */}
    <FormControlLabel
      control={<Switch 
              color="primary" 
              checked={expanded}
              className={classes.toogle}
              onChange={() => {
                  setExpanded((prev) => !prev);
              
                }} />}
        label="Show/Hide Details"/>
    <TabContext value={value}>
        <Collapse in={expanded} timeout="auto" unmountOnExit>
          <TabList
                className={classes.tablist}
                onChange={handleChange} 
                aria-label="simple tabs "
                
                TabIndicatorProps={{
                style: {
                    backgroundColor: "rgba(0,0,0,0)",
                },
                
                }}>
                    <Tab 
                      label="Profile" 
                      value="1" 
                      className={classes.tab}/>
                    <Divider 
                      orientation="vertical" 
                      variant="inset" 
                      flexItem 
                      className={classes.divider}
                      style={{
                            height:"50px",
                            marginTop: "10px",
                            marginLeft: "-25px",
                            backgroundColor: "rgba(255, 165, 0, 0.5)"
                            }}
                      />
                    <Tab 
                      label="Financials" 
                      value="2" 
                      className={classes.tab}/>
                </TabList>
          <TabPanel value="1"><Profile/></TabPanel>
          <TabPanel value="2"><Financials/></TabPanel>
        </Collapse> </TabContext>
      </>
  )
}

export default TabInfo
