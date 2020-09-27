import ReactOnRails from "react-on-rails";

import HelloWorld from "../bundles/HelloWorld/components/HelloWorld";
import { NavBar } from "../bundles/header/navbar.js";
// import { HeroSection } from "../bundles/home/hero_section.js";
import { HeroSection } from "../bundles/general/hero_section"
import { RatchetSection } from "../bundles/home/ratchet.js";
import { GamesList } from "../bundles/games/games_list.js";

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorld,
  NavBar,
  HeroSection,
  RatchetSection,
  GamesList,
});
