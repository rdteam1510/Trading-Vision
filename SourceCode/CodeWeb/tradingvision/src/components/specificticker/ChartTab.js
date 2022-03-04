import React from 'react'
import { TabContext, TabList, TabPanel } from '@material-ui/lab';
import {Tab, Divider, Typography, FormControlLabel, Switch, Menu} from '@material-ui/core'
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
import PropTypes from 'prop-types';
import SelectUnstyled, { selectUnstyledClasses } from '@mui/base/SelectUnstyled';
import OptionUnstyled, { optionUnstyledClasses } from '@mui/base/OptionUnstyled';
import PopperUnstyled from '@mui/base/PopperUnstyled';
import { styled } from '@mui/system';

const StyledButton = styled('button')(
  ({}) => `
  font-family: Montserrat;
  
  font-size: 0.875rem;
  box-sizing: border-box;
  min-height: calc(1.5em + 22px);
  min-width: 30px;
  border: 1px solid ;
  border-radius: 0.75em;
  margin-top: 0.5em;
  padding: 10px;
  text-align: left;
  line-height: 1.5;
  color: black;

  &:hover {
    background: #E4E5E8;
    border-color: 1px solid #E4E5E8;
  }

  &.${selectUnstyledClasses.focusVisible} {
    outline: 3px solid #FFC55C;
  }

  &.${selectUnstyledClasses.expanded} {
    &::after {
      content: '▴';
    }
  }

  &::after {
    content: '▾';
    float: right;
  }
  `,
);

const StyledListbox = styled('ul')(
  ({}) => `
  font-family: Montserrat;
  font-size: 0.875rem;
  box-sizing: border-box;
  padding: 5px;
  margin: 10px 0;
  min-width: 320px;
  background: #fff;
  border: 1px solid #fff;
  border-radius: 0.75em;
  color: #444444;
  overflow: auto;
  outline: 0px;
  `,
);

const StyledOption = styled(OptionUnstyled)(
  ({}) => `
  list-style: none;
  padding: 8px;
  border-radius: 0.45em;
  cursor: poi;

  &:last-of-type {
    border-bottom: none;
  }

  &.${optionUnstyledClasses.selected} {
    font-weight: bold;
    background-color: #FDB750;
    color: #FD7F20;
  }

  &.${optionUnstyledClasses.highlighted} {
    background-color: #FAEBD9;
    color: #F86F15;
  }

  &.${optionUnstyledClasses.highlighted}.${optionUnstyledClasses.selected} {
    background-color: #FAEBD9;
    color: #F86F15;
  }

  &.${optionUnstyledClasses.disabled} {
    color: #444444;
  }

  &:hover:not(.${optionUnstyledClasses.disabled}) {
    background-color: #E4E5E8;
    color: #444444;
  }
  `,
);

const StyledPopper = styled(PopperUnstyled)`
  z-index: 1;
`;


function CustomSelect(props) {
  const components = {
    Root: StyledButton,
    Listbox: StyledListbox,
    Popper: StyledPopper,
    ...props.components,
  };

  return <SelectUnstyled {...props} components={components} />;
}

CustomSelect.propTypes = {
  /**
   * The components used for each slot inside the Select.
   * Either a string to use a HTML element or a component.
   * @default {}
   */
  components: PropTypes.shape({
    Listbox: PropTypes.elementType,
    Popper: PropTypes.func,
    Root: PropTypes.elementType,
  }),
};

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
  
  const [chart,setChart] = React.useState("Line")

  const handleMenu = (event) => {
    setAnchorEl(event.currentTarget);
};
const handleClose = () => {
  setAnchorEl(null);
};

  return (
    <>
    <div className={classes.menu} >
    {/* <List component="nav">
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
                className={classes.tablist_chart}
                anchorEl={anchorEl}
                open={anchorEl}
                onClose={handleClose}
                onChange={handleChange} 
                aria-label="simple tabs "
                orientation="vertical"
                TabIndicatorProps={{
                style: {
                    backgroundColor: "rgba(0,0,0,0)",
                },
                
                }}>
                    <Tab 
                      label="Linechart" 
                      value="1" 
                      className={classes.tab_chart}/>
                    
                    <Tab 
                      label="Candlestick" 
                      value="2" 
                      className={classes.tab_chart}/>
                </TabList>
          <TabPanel value="1"><LineChart/></TabPanel>
          <TabPanel value="2"><Candlestick/></TabPanel>
       </TabContext>
       </List> */}
       </div>



       <div className={classes.chart}>
       <CustomSelect value={chart} onChange={setChart}>
        <StyledOption value={"Line"}>Line Chart</StyledOption>
        <StyledOption value={"Candlestick"}>Candlestick Chart</StyledOption>
       
      </CustomSelect>
      {
        chart === "Line" ? (
          <div><LineChart/></div>
        ) : (
          <div><Candlestick/></div>
        )
       
      }
       </div>
       
      </>
  )
}

export default ChartTab
