/**
 * Created by Victor H. Ruelas-Rivera on 2/22/17.
 * US EPA National Center for Computational Toxicology
 */
console.warn("These are the build instructions for deployment to ag:");
console.warn("1. Replace 'application' with 'http://localhost:4000/client-app.js' in  /app/views/application.html.erb");
console.warn("2. Change variable relativePath to '/impact' or sandbox name i.e. '/vruelasr-r', in /client/src/App.js");
console.warn("3. Run: NODE_ENV=production webpack --config ./webpack.config.js --progress --colors");
console.warn("These are the build instructions for development in localhost:");
console.warn("1. Replace 'http://localhost:4000/client-app.js' with 'application' in  /app/views/application.html.erb");
console.warn("2. Change variable relativePath to empty string, in /client/src/App.js");
console.warn("3. Run: rails s");
console.warn("4. Run: cd client && npm start");


