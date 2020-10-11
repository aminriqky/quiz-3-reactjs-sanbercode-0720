import React from "react"
import './App.css';
import {BrowserRouter as Router} from "react-router-dom";
import Routes from "./mara/Routes"

function App() {

  return (
    <div>
      <Router>
        <Routes/>
      </Router>
    </div>
  );
}

export default App;
