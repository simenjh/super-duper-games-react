mport React, { Component } from "react";
const _ = require("lodash");


export class SomeComponent extends Component {
  noFuckingDuplicates(){
    console.log(5);
  }

  render(){
    this.noFuckingDuplicates();
    return(<div>Fuck face!</div>);
  }
}
