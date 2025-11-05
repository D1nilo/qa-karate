function fn() {
  var config = {};
  // Ajusta si usas otro backend:
  config.baseUrl = karate.properties['baseUrl'] || 'https://petstore.swagger.io/v2';
  karate.configure('ssl', true);
  karate.configure('headers', { Accept: 'application/json', 'Content-Type': 'application/json' });
  return config;
}
