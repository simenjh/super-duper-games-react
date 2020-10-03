import React, { Component } from "react";
import { ImageComponent } from "../general/image_component";
const _ = require("lodash");



export class GamesList extends Component {
  createImageComponents(){
      let images = []
      this.props.images.forEach((image) => {
        images.push(
                    <a href={"/games/" + image.game_id}>
                      <ImageComponent image={{ src: image.url, width: this.props.image_width }} />
                    </a>
        );
      });
      return images;
  }

    wrapImages(images){
        const size = this.props.n_images_in_row;
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





GamesList.defaultProps = {
  image_width: "200px",
  n_images_in_row: 3
}
