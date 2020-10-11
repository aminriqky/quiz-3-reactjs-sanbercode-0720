import React, {useState, useEffect} from "react"
import PropTypes from 'prop-types';
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableContainer from '@material-ui/core/TableContainer';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import Typography from '@material-ui/core/Typography';
import Paper from '@material-ui/core/Paper';
import { fade, makeStyles } from '@material-ui/core/styles';
import { withStyles } from '@material-ui/core/styles';
import {
  withGoogleMap,
  GoogleMap,
  Marker,
} from "react-google-maps";
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

  const MapWithAMarker = withGoogleMap(props =>
    <GoogleMap
      defaultZoom={15}
      defaultCenter={{ lat: -2.8988004, lng: 104.3931738 }}
    >
      <Marker
        position={{ lat: -2.8988004, lng: 104.3931738 }}
      />
    </GoogleMap>
  );

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
    <img src={require("../img/banjir_logo.png")} alt="" style={{position:"absolute", width:"15%", marginLeft:"70%", marginTop:"13%", zIndex:"-1"}}/>
    <Typography variant="subtitle2" style={{marginLeft:"13%", color:"#2DA4B9", marginBottom:"5px"}}>&ensp;<b>Banjir</b></Typography>
    <TableContainer component={Paper} className={classes.table} style={{marginLeft:"13%"}}>
      <Table className={classes.table}>
        <TableHead style={{backgroundColor:"#f5f5f5"}}>
          <TableRow>
            <TableCell><Typography color="textSecondary"><b>No.</b></Typography></TableCell>
            <TableCell align="left"><Typography color="textSecondary"><b>Wilayah</b></Typography></TableCell>
            <TableCell align="left"><Typography color="textSecondary"><b>Tingkat Bencana</b></Typography></TableCell>
            <TableCell align="left"><Typography color="textSecondary"><b>Ketinggian</b></Typography></TableCell>
          </TableRow>
        </TableHead>
      <TableBody>
    {
      daftarBencana !== null && daftarBencana.map((item, index)=>{
        return(
          <>
            <TableRow>
              <TableCell align="left"><Typography color="textSecondary">{index+1}.</Typography></TableCell>
              <TableCell align="left"><Typography color="textSecondary">{item.nama_lokasi}</Typography></TableCell>
              <TableCell align="left"><Typography color="textSecondary">{item.deskripsi}</Typography></TableCell>
              <TableCell align="left"><Typography color="textSecondary"><u>+</u> {item.ketinggian/100} Meter</Typography></TableCell>
            </TableRow>
          </>
        )
      })
    }
      </TableBody>
      </Table>
    </TableContainer>
    <br/>
    <Typography variant="subtitle2" style={{marginLeft:"13%", color:"#2DA4B9", marginBottom:"5px"}}>&ensp;<b>Maps</b></Typography>
    <MapWithAMarker
      containerElement={<div style={{ height: `360px`, width:"650px", marginLeft:"13%"}} />}
      mapElement={<div style={{ height: `100%` }} />}
    />
    <br/>
  </>
  );
}

PrimarySearchAppBar.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(useStyles)(PrimarySearchAppBar);