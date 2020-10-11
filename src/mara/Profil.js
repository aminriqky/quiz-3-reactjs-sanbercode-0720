import React, {useState, useEffect} from "react"
import PropTypes from 'prop-types';
import TextField from '@material-ui/core/TextField';
import Table from '@material-ui/core/Table';
import TableContainer from '@material-ui/core/Table';
import TableBody from '@material-ui/core/Table';
import TableCell from '@material-ui/core/TableCell';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import Typography from '@material-ui/core/Typography';
import Paper from '@material-ui/core/Paper';
import Button from '@material-ui/core/Button';
import Popover from '@material-ui/core/Popover';
import { fade, makeStyles } from '@material-ui/core/styles';
import AppBar from '@material-ui/core/AppBar';
import Toolbar from '@material-ui/core/Toolbar';
import IconButton from '@material-ui/core/IconButton';
import InputBase from '@material-ui/core/InputBase';
import Badge from '@material-ui/core/Badge';
import SearchIcon from '@material-ui/icons/Search';
import ExitToAppIcon from '@material-ui/icons/ExitToApp';
import NotificationsIcon from '@material-ui/icons/Notifications';
import Radio from '@material-ui/core/Radio';
import RadioGroup from '@material-ui/core/RadioGroup';
import FormControlLabel from '@material-ui/core/FormControlLabel';
import FormControl from '@material-ui/core/FormControl';
import Checkbox from '@material-ui/core/Checkbox';
import { withStyles } from '@material-ui/core/styles';
import axios from 'axios'

const useStyles = makeStyles((theme) => ({
  grow: {
    flexGrow: 1,
  },
  menuButton: {
    marginRight: theme.spacing(2),
  },
  title: {
    display: 'none',
    [theme.breakpoints.up('sm')]: {
      display: 'block',
    },
  },
  search: {
    position: 'relative',
    borderRadius: theme.shape.borderRadius,
    backgroundColor: fade(theme.palette.common.white, 0.15),
    '&:hover': {
      backgroundColor: fade(theme.palette.common.white, 0.25),
    },
    marginRight: theme.spacing(2),
    marginLeft: 0,
    width: '100%',
    [theme.breakpoints.up('sm')]: {
      marginLeft: theme.spacing(3),
      width: 'auto',
    },
  },
  searchIcon: {
    padding: theme.spacing(0, 2),
    height: '100%',
    position: 'absolute',
    pointerEvents: 'none',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
  },
  inputRoot: {
    color: 'inherit',
  },
  inputInput: {
    padding: theme.spacing(1, 1, 1, 0),
    paddingLeft: `calc(1em + ${theme.spacing(4)}px)`,
    transition: theme.transitions.create('width'),
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: '20ch',
    },
  },
  sectionDesktop: {
    display: 'none',
    [theme.breakpoints.up('md')]: {
      display: 'flex',
    },
  },
  sectionMobile: {
    display: 'flex',
    [theme.breakpoints.up('md')]: {
      display: 'none',
    },
  },
  paper: {
    maxWidth: 936,
    margin: 'auto',
    overflow: 'hidden',
  },
  contentWrapper: {
    margin: '40px 16px',
  },
  table: {
    maxWidth: 420,
  },
}));

function PrimarySearchAppBar(props) {

  const classes = useStyles();
  const [anchorEl, setAnchorEl] = React.useState(null);

  const handleClick = (event) => {
    setAnchorEl(event.currentTarget);
  };

  const handleClose = () => {
    setAnchorEl(null);
  };

  const [checked, setChecked] = React.useState(true);

  const handleubah = (event) => {
    setChecked(event.target.checked);
  };

  const [daftarBencana, setdaftarBencana] =  useState(null)

  useEffect( () => {
    if (daftarBencana === null){
      axios.get(`http://localhost:8000/api/flood`)
      .then(res => {
        const all = res.data;
        setdaftarBencana(all)
      })
    }
    console.log(daftarBencana);
  }, [daftarBencana])

  const open = Boolean(anchorEl);
  const id = open ? 'simple-popover' : undefined;

  const [value, setValue] = React.useState('ya');

  const handleChange = (event) => {
    setValue(event.target.value);
  };

  return (
    <>
    <div className={classes.grow}>
      <AppBar position="static">
        <Toolbar style={{backgroundColor:"#2DA4B9"}}>
          <Button style={{width:"10%"}}>
            <img src={require("../img/logo.png")} style={{width:"100%", padding:"5%"}} alt=""/>
          </Button>
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
            />
          </div>
          &nbsp;
          <Button style={{width:"10%", fontFamily:"arial", color:"white", textTransform:"none"}} href="/home">
            <b>Beranda</b>
          </Button>
          &nbsp;
          <Button style={{width:"10%", fontFamily:"arial", color:"white", textTransform:"none"}} href="/bencana">
            <b>Bencana</b>
          </Button>
          &nbsp;
          <Button style={{width:"10%", fontFamily:"arial", color:"#2DA4B9", backgroundColor:"white", textTransform:"none"}}>
            <b>Profil</b>
          </Button>
          <div className={classes.grow} />
            <IconButton color="inherit" onClick={handleClick}>
              <Badge badgeContent={0} color="secondary">
                <NotificationsIcon/>
              </Badge>
            </IconButton>
            <Popover
              id={id}
              open={open}
              anchorEl={anchorEl}
              onClose={handleClose}
              anchorOrigin={{
                vertical: 'bottom',
                horizontal: 'right',
              }}
              transformOrigin={{
                vertical: 'top',
                horizontal: 'right',
              }}
            >
              <Paper>
                <Table style={{width:"320px", height:"auto"}}>
                  <Toolbar variant="dense" style={{backgroundColor:"#f5f5f5"}}>
                    <TableHead style={{backgroundColor:"#f5f5f5"}}>
                      <Typography color="textSecondary" variant="subtitle2"><b>Notifikasi</b></Typography>
                    </TableHead>
                  </Toolbar>
              {
                daftarBencana !== null && daftarBencana.map((item)=>{
                  return(
                    <>
                    <TableRow>
                    <TableCell>
                      <Toolbar variant="dense">
                        <Typography color="textSecondary" variant="subtitle2">Daerah <b>{item.nama_lokasi}</b> {item.deskripsi}</Typography>
                      </Toolbar>
                    </TableCell>
                    </TableRow>
                    </>
                  )
                })
              }
                </Table>
              </Paper>
            </Popover>
            <IconButton color="inherit" href="/">
              <ExitToAppIcon/>
            </IconButton>
        </Toolbar>
      </AppBar>
    </div>
    <br/>
    <TableContainer component={Paper} className={classes.table} style={{float:'right', marginTop:"7%", marginRight:"27%"}}>
      <Table className={classes.table}>
        <TableHead style={{backgroundColor:"#f5f5f5"}}>
          <TableRow>
            <TableCell><Typography color="textSecondary"><b>Ingin menerima pemberitahuan bencana?</b></Typography></TableCell>
          </TableRow>
        </TableHead>
      <TableBody>
      <TableRow>
      <FormControl component="fieldset">
      <TableCell>
      <RadioGroup aria-label="gender" name="gender1" value={value} onChange={handleChange}>
        <FormControlLabel value="ya" control={<Radio />} label="Ya" />
        <FormControlLabel value="tidak" control={<Radio />} label="Tidak" />
      </RadioGroup>
      </TableCell>
      </FormControl>
      </TableRow>
      </TableBody>
      </Table>
    </TableContainer>
    <TableContainer component={Paper} className={classes.table} style={{float:'right', marginTop:"3%", marginRight:"27%"}}>
      <Table className={classes.table}>
        <TableHead style={{backgroundColor:"#f5f5f5"}}>
          <TableRow>
            <TableCell><Typography color="textSecondary"><b>Pilih bencana yang ingin masuk pemberitahuan</b></Typography></TableCell>
          </TableRow>
        </TableHead>
      <TableBody>
      <TableRow>
      <Checkbox
        checked={checked}
        onChange={handleubah}
        inputProps={{ 'aria-label': 'primary checkbox' }}
      /><label>Banjir</label><br/>
      <Checkbox
        checked={checked}
        onChange={handleubah}
        inputProps={{ 'aria-label': 'primary checkbox' }}
      /><label>Kebakaran</label><br/>
      <Checkbox
        checked={checked}
        onChange={handleubah}
        inputProps={{ 'aria-label': 'primary checkbox' }}
      /><label>Longsor</label><br/>
      </TableRow>
      </TableBody>
      </Table>
    </TableContainer>
    <TextField id="filled-basic" label="Nama Lengkap" defaultValue="Muhammad Amin Riqky" variant="filled" style={{marginLeft:"20%", marginTop:"13%"}}/><br/><br/>
    <TextField id="filled-basic" label="Email" defaultValue="aminriqky@gmail.com" variant="filled" style={{marginLeft:"20%"}}/><br/><br/>
    <TextField id="filled-basic" label="Password" defaultValue="bengaklolo" variant="filled" type="password" style={{marginLeft:"20%"}}/><br/><br/>
    <Button variant="contained" style={{marginLeft:"21%"}} color="primary">Simpan</Button>&emsp;
    <Button variant="contained" color="secondary">Batal</Button>
  </>
  );
}

PrimarySearchAppBar.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(useStyles)(PrimarySearchAppBar);