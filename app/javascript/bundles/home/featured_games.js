import React, { Component } from "react";
import { ImageComponent } from "./image_component";
const _ = require("lodash");
import img1 from "../../../assets/images/featured-images/big_gainer.jpg";



export class FeaturedGames extends Component {
  createImageComponents(){
    let images = []
    for (let i=0; i<6; i++){
      images.push(<ImageComponent image={{ src: img1 }} />);
    }
    return images;
  }

  wrap_images(images){
    const size = 3;
    const grouped_images = _.chunk(images, size);
    const wrapped_images = grouped_images.map((e) => {
      return <div className="featured-games-row">{e}</div>
    });
    return wrapped_images;
  }

  render(){
    const images = this.createImageComponents();
    const wrapped_images = this.wrap_images(images);

    return (
      <div className="featured-games-section">
        {wrapped_images}
      </div>
    );
  }
}
