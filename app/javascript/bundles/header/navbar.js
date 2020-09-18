import React, { Component } from "react";
import logo from "../../../assets/images/crash_bandicoot_2.png"


export class NavBar extends Component {
  render(){
    return (
        <nav className="navbar navbar-expand-sm bg-dark navbar-dark">
          <a className="navbar-brand" href="/">
            <img src={logo} style={{width: "80px"}} />
            Super Duper Games
          </a>
          <ul className="navbar-nav">
            <li className="nav-item">
              <a href="/" className="nav-link">Home</a>
            </li>
            <li className="nav-item">
              <a href="/" className="nav-link">Games</a>
            </li>
            <li className="nav-item">
              <a href="/" className="nav-link">Something</a>
            </li>
          </ul>
        </nav>
    );
  }
}
