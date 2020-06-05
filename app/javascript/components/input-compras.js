import Typed from 'typed.js';

const loadDynamicInput = () => {
  const element = document.getElementById("order-confirmed")
  if (element) {
  new Typed('#order-confirmed', {
    strings: ["ORDER CONFIRMED", "THANK YOU"],
    typeSpeed: 100,
    loop: true
  });
  }
}

export { loadDynamicInput };
