import React from 'react';
import "../App.css"

function Login() {
  return (
    <div>
        <section>
        <h1>Silahkan Login</h1>
        <center>
        <b>Username :</b><input id="form" type="text"/><br/><br/>
        <b>Password :</b><input id="form" type="password"/><br/><br/>
        <br/>
        <input type="button" id="btn" value="Login"/><br/><br/>
        <br/><br/>
        </center>
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

export default Login;