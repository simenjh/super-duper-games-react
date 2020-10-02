import React, { Component } from "react";
import sw from "../../images/sw_vader.jpg";


export class HeroSection extends Component {
  render(){
    return (
      <div className="hero-image" style={{backgroundImage: `linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.5)), url(${this.props.hero_url})`}}>
        <div className="hero-text">
          <h1>{this.props.game.name}</h1>
          <p>{this.props.game.hero_description}</p>
        </div>
      </div>
    );
  }
}


HeroSection.defaultProps = {
  game: {
    name: "Addiction Starts Now",
    hero_description: "Start your gaming addiction today!"
  },
  hero_url: sw
}
