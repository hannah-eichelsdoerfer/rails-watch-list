import Typed from 'typed.js';

const initTyped = () => {
  const element = document.querySelector('.typed-js');
  if (element) {
    new Typed('.typed-js', {
      strings: ['Drama', 'Classic', 'Comedy', 'Action', 'Romantic', 'Thriller', 'Horror', 'Slasher'],
      typeSpeed: 100,
      loop: true,
      loopCount: Infinity,
      showCursor: false
    });
  }
};

const loadDynamicText = () => {
  new Typed('#headline-typed-text', {
    strings: ["Best platform ever!", "Awsome stuff!", "Where I store all my movies!", "New favourite app!"],
    typeSpeed: 100,
    loop: false // true
  });
}

export { initTyped, loadDynamicText };
