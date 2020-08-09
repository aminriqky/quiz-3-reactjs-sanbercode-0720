import React from 'react';
import { Switch, Link, Route } from "react-router-dom";
import "../App.css"
import Home from "./Index";
import About from "./About";
import MovieList from "./MovieList";
import Login from "./Login";
import PrivateRoute from './PrivateRoute';
import { AuthContext } from "./auth";

const Routes = () => {
    return(
        <>
        <div>
        <link href="public/css/style.css" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet" />
          <title>Sanbercode</title>
          <nav>
            <div className="topnav">
                <img id="logo" src={require('./logo.png')} width="200px" />
                <Link to="/Login"><a id="login">Login</a></Link>
                <Link to="/MovieList"><a>Movie List Editor</a></Link>
                <Link to="/About"><a>About</a></Link>
                <Link to="/"><a>Home</a></Link>
            </div>
          </nav>
          <AuthContext.Provider value={false}>
          <Switch>
          <Route path="/Login">
                <Login/>
            </Route>
            <PrivateRoute path="/MovieList">
                <MovieList/>
            </PrivateRoute>
            <Route path="/About">
                <About/>
            </Route>
            <Route path="/">
                <Home/>
            </Route>
        </Switch>
        </AuthContext.Provider>
        </div>
        </>
    )
}

export default Routes;