import React, { Component } from "react";
import { LazyLoadImage } from 'react-lazy-load-image-component';
import 'react-lazy-load-image-component/src/effects/opacity.css';
import 'react-lazy-load-image-component/src/effects/blur.css';




export class ImageComponent extends Component {
  render(){
    const image = this.props.image;
    return (
        <LazyLoadImage className="game-thumbnail"
          wrapperClassName="game-thumbnail-container"
          alt={image.alt}
          height={image.height}
          src={image.src} // use normal <img> attributes as props
          width={image.width}
          threshold="0"
          effect="opacity" />
    );
  }
}
