import ReactOnRails from 'react-on-rails';

import HelloWorld from '../bundles/HelloWorld/components/HelloWorld';
import { NavBar } from "../bundles/header/navbar.js";
import { HeroSection } from "../bundles/home/hero_section.js";
import { RatchetSection } from "../bundles/home/ratchet.js";
import { FeaturedGames } from "../bundles/home/featured_games.js";

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorld,
  NavBar,
  HeroSection,
  RatchetSection,
  FeaturedGames,
});
