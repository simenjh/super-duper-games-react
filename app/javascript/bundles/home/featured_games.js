import React, { Component } from "react";
import { ImageComponent } from "./image_component";
const _ = require("lodash");
import img1 from "../../../assets/images/featured-images/big_gainer.jpg";



export class FeaturedGames extends Component {
  createImageComponents(){
      let images = []
      this.props.images.forEach((image, index) => {
        images.push(<ImageComponent image={{ src: image.url, width: "200px" }} />);
      });
      return images;
  }

    wrapImages(images){
        const size = 3;
        const grouped_images = _.chunk(images, size);
        const wrapped_images = grouped_images.map((e) => {
          return <div className="featured-games-row">{e}</div>
        });
        return wrapped_images;
    }

  render(){
    const imageComponents = this.createImageComponents();
    const wrappedImages = this.wrapImages(imageComponents);
    return (
          <div className="featured-games-section">
              {wrappedImages}
          </div>
    );
  }
}
