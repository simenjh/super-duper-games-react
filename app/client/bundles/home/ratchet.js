import React, { Component } from "react";
import ratchet from "../../images/ratchet.png";


export class RatchetSection extends Component {
  render(){
    return (
      <div className="ratchet-section">
        <img id="ratchet-image" src={ratchet} style={{width: "300px"}}/>
        <div className="ratchet-text-section">
          <h1>Ratchet & Clank</h1>
          <p>Ratchet & Clank is a series of action platformer and third-person shooter video games.
          The franchise was created and developed by Insomniac Games and published by Sony Computer Entertainment for PlayStation consoles,
          such as PlayStation 2, PlayStation 3, PlayStation 4, and PlayStation 5, with the exclusion of Size Matters and Secret Agent Clank,
          which were developed by High Impact Games for the PlayStation Portable.
          </p>
          <div id="ratchet-button-container">
            <a className="btn btn-primary" href={"/games/" + this.props.id}>Explore Ratchet & Clank</a>
          </div>
        </div>
      </div>
    );
  }
}
