import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.getElementById('banner-typed-text')) {
    let text = ''
    const regex = new RegExp('gardens/\d+')
    if (window.location.pathname === '/gardens') {
      text = ["welcome to your garden list"]

    } else if (window.location.pathname === regex) {
      text = ["check your plant"]
    } else {
      text = ["Change your garden", "Plant your seed"]
    }
    console.log((window.location.pathname === regex))
    new Typed('#banner-typed-text', {
      strings: text,
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
