import ReactOnRails from "react-on-rails";

import { HeroSection } from "../bundles/general/hero_section"
import { RatchetSection } from "../bundles/home/ratchet.js";
import { GamesList } from "../bundles/games/games_list.js";

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HeroSection,
  RatchetSection,
  GamesList,
});
