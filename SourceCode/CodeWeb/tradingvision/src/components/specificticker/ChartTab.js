import React from 'react'
import { TabContext, TabList, TabPanel } from '@material-ui/lab';
import {Tab, Divider, Typography, FormControlLabel, Switch} from '@material-ui/core'
import LineChart from './LineChart'
import Candlestick from '../candlestick/Candlestick'
import useStyles from './style'
import IconButton from '@mui/material/IconButton';
import Collapse from '@mui/material/Collapse';
import SettingsIcon from '@mui/icons-material/Settings';
import MenuItem from '@material-ui/core/MenuItem';
import List from '@material-ui/core/List';
import ListItem from '@material-ui/core/ListItem';

import ExpandLess from '@material-ui/icons/ExpandLess';
import ExpandMore from '@material-ui/icons/ExpandMore';
// const ExpandMore = styled((props) => {
//   const { expand, ...other } = props;
//   return <IconButton {...other} />;
// })(({ theme, expand }) => ({
//   transform: !expand ? 'rotate(-90deg)' : 'rotate(0deg)',
//   marginLeft: 'auto',
//   transition: theme.transitions.create('transform', {
//     duration: theme.transitions.duration.shortest,
//   }),
// }));


const ChartTab = () => {
  
  const [value, setValue] = React.useState('1');
  const handleChange = (event, newValue) => {
      setValue(newValue);
    };
  const classes = useStyles();
  const [expanded, setExpanded] = React.useState(true);

  const [auth, setAuth] = React.useState(true);
  const [anchorEl, setAnchorEl] = React.useState(false);
  const open = Boolean(anchorEl);


  const handleMenu = (event) => {
    setAnchorEl(event.currentTarget);
};
const handleClose = () => {
  setAnchorEl(null);
};

  return (
    <>
    <div className={classes.menu} >
    <List component="nav">
      <ListItem/>
        <IconButton
            aria-label="account of current user"
            aria-controls="menu-appbar"
            aria-haspopup="true"
            onClick={handleMenu}
            color="inherit">
            <SettingsIcon />
        </IconButton>
        
        <TabContext 
        
        value={value}>
       
          <TabList
                className={classes.tablist}
                anchorEl={anchorEl}
                open={anchorEl}
                onClose={handleClose}
                onChange={handleChange} 
                aria-label="simple tabs "
            
                TabIndicatorProps={{
                style: {
                    backgroundColor: "rgba(0,0,0,0)",
                },
                
                }}>
                    <Tab 
                      label="Linechart" 
                      value="1" 
                      className={classes.tab}/>
                    
                    <Tab 
                      label="Candlestick" 
                      value="2" 
                      className={classes.tab}/>
                </TabList>
          <TabPanel value="1"><LineChart /></TabPanel>
          <TabPanel value="2"><Candlestick/></TabPanel>
       </TabContext>
       </List>
       </div>
      </>
  )
}

export default ChartTab
