import React, {useState, useEffect} from "react"
import PropTypes from 'prop-types';
import Typography from '@material-ui/core/Typography';
import Paper from '@material-ui/core/Paper';
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableContainer from '@material-ui/core/TableContainer';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import { fade, makeStyles } from '@material-ui/core/styles';
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
    maxWidth: 650,
  },
}));

function PrimarySearchAppBar(props) {

  const classes = useStyles();

  const [daftarBencana, setdaftarBencana] =  useState(null)

  useEffect( () => {
    if (daftarBencana === null){
      axios.get(`http://localhost:8000/api/flood`)
      .then(res => {
        setdaftarBencana(res.data.map(el=>{ return {id: el.id, nama_lokasi: el.nama_lokasi, deskripsi: el.deskripsi, ketinggian: el.ketinggian, lokasi: el.lokasi}}))
      })
    }
    console.log(daftarBencana);
  }, [daftarBencana])

  return (
    <>
    <img src={require("../img/bakar_logo.png")} alt="" style={{position:"absolute", width:"15%", marginLeft:"40%", marginTop:"2%", zIndex:"-1"}}/>
    <TableContainer component={Paper} className={classes.table} style={{marginLeft:"25%", marginTop:"20%"}}>
      <Table className={classes.table}>
        <TableHead style={{backgroundColor:"#f5f5f5"}}>
          <TableRow>
            <TableCell><Typography color="textSecondary"><b>Pagaralam</b></Typography></TableCell>
            <TableCell/>
            <TableCell align="center"><Typography color="textSecondary" style={{padding:"10px", backgroundColor:"tomato", borderRadius:"5px"}}><b>Kebakaran</b></Typography></TableCell>
          </TableRow>
        </TableHead>
      <TableBody>
      <TableRow>
        <TableCell align="left"><Typography color="textSecondary">
          <img src={require("../img/beranda2.png")} style={{borderRadius:"5px", width:"80%"}} alt=""/>
        </Typography></TableCell>
        <TableCell align="left"><Typography color="textSecondary">
          <img src={require("../img/beranda3.png")} style={{borderRadius:"5px", width:"80%"}} alt=""/>
        </Typography></TableCell>
        <TableCell align="left"><Typography color="textSecondary">
          <img src={require("../img/beranda.png")} style={{borderRadius:"5px", width:"80%"}} alt=""/>
        </Typography></TableCell>
      </TableRow>
      </TableBody>
      </Table>
    </TableContainer>
    <br/>
  </>
  );
}

PrimarySearchAppBar.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(useStyles)(PrimarySearchAppBar);