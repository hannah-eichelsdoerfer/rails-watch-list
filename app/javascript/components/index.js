import Typed from 'typed.js';

const loadDynamicText = () => {
  new Typed('#headline-typed-text', {
    strings: ["Best platform ever!", "Awsome stuff!"],
    typeSpeed: 100,
    loop: false // true
  });
}

export { loadDynamicText };