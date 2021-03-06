// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import 'bootstrap';

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// TESTING FOR MYSELF:
// console.log("Hello from app/javascript/packs/application.js!");

import 'aos/dist/aos.css';
import AOS from 'aos';
import { initTyped, loadDynamicText } from './plugins/init_typedjs';

document.addEventListener('turbolinks:load', () => {
  loadDynamicText();
  AOS.init();
});

//= require select2
