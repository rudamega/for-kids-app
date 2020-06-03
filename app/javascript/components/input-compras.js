import Typed from 'typed.js';

const loadDynamicInput = () => {
  const element = document.getElementById("compra-confirmada")
  if (element) {
  new Typed('#compra-confirmada', {
    strings: ["COMPRA CONFIRMADA", "OBRIGADO PELA CONFIANZA"],
    typeSpeed: 100,
    loop: true
  });
  }
}

export { loadDynamicInput };
