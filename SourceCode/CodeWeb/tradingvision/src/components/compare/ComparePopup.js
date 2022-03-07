import { Container,
        InputBase,
        ThemeProvider,
        createTheme,
        Tab,} from '@material-ui/core'
import React from 'react'
import useStyles from '../search/style'
import SearchIcon from '@mui/icons-material/Search';
import { TabContext, TabList, TabPanel } from '@material-ui/lab';
import SearchTicker from './SearchTicker';

const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
      fontFamily: "Montserrat",
    },
  });

const ComparePopup = () => {
    const classes = useStyles()
    const [test, setTest] = React.useState(false);
    const handleOpen = () => setTest(true);
    const handleClosed = () => setTest(false);
    const [value, setValue] = React.useState('1');
    const handleChange = (event, newValue) => {
        setValue(newValue);
      };


  return (
    <ThemeProvider theme={darkTheme}>
    <Container>
        <div className={classes.search}>
                <div className={classes.searchIcon}>
                    <SearchIcon />
                    </div>
                <InputBase
                    placeholder="Search…"
                    classes={{
                        root: classes.inputRoot,
                        input: classes.inputInput,
                    }}
                    inputProps={{ 'aria-label': 'search' }}
                    onClick={handleOpen}
                    style={{fontFamily: "Montserrat"}}
                    />
                            
        </div>
        <div className={classes.table}>
            <TabContext value={value}>
            
                <TabList
                className={classes.tablist}
                onChange={handleChange} 
                aria-label="simple tabs "
                TabIndicatorProps={{
                style: {
                    backgroundColor: "#D97D54"
                }
                }}>
                    <Tab label="HOSE" value="1" className={classes.tab}/>
                    <Tab label="HNX" value="2" className={classes.tab}/>
                    <Tab label="UPCOM" value="3" className={classes.tab}/>
                </TabList>

            <TabPanel value="1" ><SearchTicker/></TabPanel>
            <TabPanel value="2"><SearchTicker/></TabPanel>
            <TabPanel value="3"><SearchTicker/></TabPanel>
        </TabContext>
        </div>
    </Container>
    </ThemeProvider>
  )
}

export default ComparePopup