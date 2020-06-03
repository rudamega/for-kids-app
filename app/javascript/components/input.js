import Typed from 'typed.js';

const loadDynamicInputText = () => {
  const element = document.getElementById("input-typed-text")
  if (element) {
  new Typed('#input-typed-text', {
    strings: ["Please insert", "your product name"],
    attr: "placeholder",
    typeSpeed: 50,
    loop: true
  });
   }
}

export { loadDynamicInputText };
