import React, { Component } from "react";
import { ImageComponent } from "../general/image_component";
const _ = require("lodash");



export class GamesList extends Component {
  state = {
    n_images_in_row: window.innerWidth <= 419 ? 1 : this.props.n_images_in_row,
    image_width: this.props.image_width ? this.props.image_width : "200px"
  }

  updateDimensions = () => {
    if(window.innerWidth <= 419 && (this.state.n_images_in_row != 1)) {
      this.setState({ n_images_in_row: 1 });
    }
    else if(window.innerWidth > 419 && (this.state.n_images_in_row != this.props.n_images_in_row)) {
      this.setState({ n_images_in_row: this.props.n_images_in_row });
    }
  };
  componentDidMount() {
    window.addEventListener('resize', this.updateDimensions);
  }
  componentWillUnmount() {
    window.removeEventListener('resize', this.updateDimensions);
  }

  createImageComponents(){
    let images = []
    this.props.images.forEach((image) => {
      images.push(
                  <a href={"/games/" + image.game_id}>
                    <ImageComponent image={{ src: image.url, width: this.state.image_width }} />
                  </a>
      );
    });
    return images;
  }

  wrapImages(images){
    const size = this.state.n_images_in_row;
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
