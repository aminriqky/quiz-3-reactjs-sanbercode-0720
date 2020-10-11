import React from "react"
import { Switch, Route } from "react-router-dom";
import SignInSide from "./SignInSide";
import SignUpSide from "./SignUpSide";
import Home from "./Home";
import Bencana from "./Bencana";
import Profil from "./Profil";

const Routes = () => {

    return(
        <>
        <Switch>
        <Route path="/profil">
            <Profil/>
        </Route>
        <Route path="/bencana">
            <Bencana/>
        </Route>
        <Route path="/home">
            <Home/>
        </Route>
        <Route path="/sign-up">
            <SignUpSide/>
        </Route>
        <Route path="/">
            <SignInSide/>
        </Route>
        </Switch>
        </>
    );
};

export default Routes;