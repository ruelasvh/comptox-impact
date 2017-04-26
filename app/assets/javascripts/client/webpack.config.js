/**
 * Created by vruelasr on 12/16/16.
 */
var webpack = require("webpack");

// This must be the public address where the hot reload bundle is loaded in the
// browser.
const os = require("os");
var url = require('url');
const PUBLIC_DEV_SERVER = `http://${os.hostname()}:4000/`;
// Initial point where Webpack will start bundling;
// All React components must be included in this file.
const ENTRY = __dirname + "/src/index.js";
// Where webpack Babel transpiler and Webpack's react-hot-loader
// will search for files.
const SRC_PATH = __dirname + "/src";
// If this is changed, change app/views/layouts/application.html.erb respectively
const OUT_PATH = __dirname + "/build/";
// Find out which environment we are in
const NODE_ENV_PLUGIN = new webpack.DefinePlugin({
    "process.env.NODE_ENV": JSON.stringify(process.env.NODE_ENV)
});

const config = {
    entry: [
        "webpack-hot-middleware/client?path=" + PUBLIC_DEV_SERVER + "__webpack_hmr",
        ENTRY
    ],
    output: {
        path: OUT_PATH,
        filename: "client-app.js",
        publicPath: PUBLIC_DEV_SERVER
    },
    devtool: "cheap-module-eval-source-map",
    module: {
        loaders: [
            // Process JS with Babel and the hot module loader
            {
                test: /\.js?$/,
                exclude: /(node_modules)/,
                loaders: [
                    'react-hot',
                    'babel',
                ],
                include: SRC_PATH
            },
            // Process css and scss files
            {
                test: /\.?css$/,
                exclude: /(node_modules)/,
                loader: 'style!css!sass'
            },
            // Process images
            {
                test: /\.(png|jpg|gif)$/,
                loader: 'url-loader?limit=200000' // inline base64 URLs for <=20k images, direct URLs for the rest
            },
            {
                test: /\.svg$/,
                loader: 'file-loader'
            },
            {
                test: /\.tsv$/,
                loader: 'dsv-loader'
            }
        ]
    },
    // This is so that when importing modules file extensions can be left out
    resolve: {
        extensions: ['', '.js', '.jsx'],
        alias: {
            'masonry': 'masonry-layout',
            'isotope': 'isotope-layout'
        }
    },
    plugins: [
        NODE_ENV_PLUGIN,
        new webpack.HotModuleReplacementPlugin(),
        new webpack.NoErrorsPlugin(),
    ]
};

// Drop all hot stuff for production!
if (process.env.NODE_ENV === "production") {
    config.devtool = "source-map";
    config.entry = ENTRY;
    delete config.output.publicPath;
    config.plugins = [NODE_ENV_PLUGIN];
}

module.exports = config;
