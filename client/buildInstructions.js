/**
 * Created by Victor H. Ruelas-Rivera on 2/22/17.
 * US EPA National Center for Computational Toxicology
 */
console.warn("These are the build instructions for deployment to ag:");
console.warn("1. Replace 'http://localhost:4000/client-app.js' with 'application' in  /app/views/layouts/application.html.erb");
console.warn("2. Run: NODE_ENV=production webpack --config ./webpack.config.js --progress --colors");
console.warn("These are the build instructions for development in localhost:");
console.warn("1. Replace 'application' with 'http://localhost:4000/client-app.js' in  /app/views/layouts/application.html.erb");
console.warn("2. Run: rails s");
console.warn("3. Run: npm start");


