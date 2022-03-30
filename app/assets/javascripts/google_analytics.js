document.addEventListener('turbolinks:load', function(event) {
    if (typeof gtag === 'function') {
      gtag('config', 'G-375811H48K', {
        'page_location': event.data.url
      });
    }
  });