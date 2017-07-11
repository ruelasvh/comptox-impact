/**
 * Created by vruelasr on 07/10/2017.
 */
var webpack = require('webpack');
var WebpackDevServer = require('webpack-dev-server');
var config = require('./webpack.config');

new WebpackDevServer(webpack(config), {
    publicPath: config.output.publicPath,
    inline: true,
    contentBase: config.output.publicPath,
    hot: true,
    headers: { "Access-Control-Allow-Origin": "*" },
    historyApiFallback: true,
    quiet: false,
    noInfo: false,
    watchOptions: {
        aggregateTimeout: 300,
        poll: 1000
    },
    stats: { colors: true },
}).listen(4000, 'localhost', function (err, result) {
    if (err) {
        return console.log(err);
    }

    console.log('Listening at http://localhost:4000/');
});



