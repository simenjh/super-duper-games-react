// Not used anymore

import React, { Component } from "react";
import img1 from "../../images/sw_vader.jpg";
import img2 from "../../images/rayman.jpg";



export class HeroSection extends Component {
  constructor(props){
    super(props);
    this.state = { heroImage: `linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.5)), url(${img1})` };
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(){
    const img_1 = `linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.5)), url(${img1})`;
    const img_2 = `linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.5)), url(${img2})`;
    let img = this.state.heroImage == img_1 ? img_2 : img_1;
    this.setState({
      heroImage: img
    });
  }

  render(){
    return (
      <div>
        <HeroContent heroImage={this.state.heroImage} onClick={this.handleClick} />
      </div>
    );
  }
}





class HeroContent extends Component {
  render(){
    return (
      <div className="hero-image" style={{backgroundImage: this.props.heroImage}}>
        <div className="hero-text">
          <h1>Where Addiction Starts</h1>
          <p>Start your game addiction today!</p>
          <button className="btn btn-primary" onClick={this.props.onClick}>Get addicted</button>
        </div>
      </div>
    );
  }
}
