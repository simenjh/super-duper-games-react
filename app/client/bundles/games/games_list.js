import React, { Component } from "react";
import { ImageComponent } from "../home/image_component";
const _ = require("lodash");



export class GamesList extends Component {
  createImageComponents(){
      let images = []
      this.props.images.forEach((image) => {
        images.push(
                  <a href={"/games/" + image.game_id}>
                    <ImageComponent image={{ src: image.url, width: "200px" }} />
                  </a>
        );
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
