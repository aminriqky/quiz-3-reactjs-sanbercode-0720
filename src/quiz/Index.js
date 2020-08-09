import React, {useState, useEffect} from "react"
import axios from "axios"
import "../App.css"

function Index() {

  const [daftarFilm, setDaftarFilm] =  useState(null)

  useEffect( () => {
    if (daftarFilm === null){
      axios.get(`http://backendexample.sanbercloud.com/api/movies`)
      .then(res => {
        setDaftarFilm(res.data.map(el=>{ return {id: el.id, title: el.title, description: el.description, year: el.year, duration: el.duration, genre: el.genre, rating: el.rating}} ))
      })
    }
  }, [daftarFilm])

  return (
    <div>
    <section style={{marginLeft: "16%", marginRight: "16%"}}>
    <h1>Daftar Film Film Terbaik</h1>
    {
      daftarFilm !== null && daftarFilm.map((item)=>{
        return(
          <>
          <a href={item.title}><h3>{item.title}</h3></a>
          <p>
            <b>Rating : {item.rating}</b><br/>
            <b>Durasi : {item.duration}</b><br/>
            <b>Genre : {item.genre}</b><br/>
            <br/>
            <b>Deskripsi : </b>{item.description}<br/>
            <br/>
            <b>Tahun : {item.year}</b><br/>
          </p>
          <hr></hr>
          </>
        )
      })
    }
    </section>
    <footer>
      <h5>copyright &copy; 2020 by Sanbercode</h5>
    </footer>
    </div>
  );
}

export default Index;