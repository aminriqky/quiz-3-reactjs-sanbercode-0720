import React from 'react';
import "../App.css"

function About() {
  return (
    <div>
    <section style={{marginLeft: "16%", marginRight: "16%"}}>
    <h1>Data Sanbercode Bootcamp Reactjs</h1>
        <ol>
          <li>Nama : Muhammad Amin Riqky</li>
          <li>Email : <a href="mailto:aminriqky@gmail.com">aminriqky@gmail.com</a></li>
          <li>Sistem Operasi yang digunakan : <a href="https://id.wikipedia.org/wiki/Windows_10">Windows 10</a></li>
          <li>Akun GitHub : <a href="https://github.com/aminriqky">aminriqky</a></li>
          <li>Akun Telegram : <a href="https://t.me/M_Amin_Riqky">@M_Amin_Riqky</a></li>
        </ol>
    </section>
    <div class="kmbli">
    <a href="index.html">Kembali ke Index</a>
    </div>
    <div class="f">
    <footer>
      <h5>copyright &copy; 2020 by Sanbercode</h5>
    </footer>
    </div>
    </div>
  );
}

export default About;