/**
 * Created by Victor H. Ruelas-Rivera on 2/10/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { Component } from 'react';
import { Router, Route, IndexRoute, browserHistory, Link } from 'react-router';

// components
import Header from './header/HeaderIndex';
import Footer from './footer/FooterIndex';
import Home from './home/HomeIndex';
import ScientistsIndex from './scientists/ScientistsIndex';

// const Header = () => (<div><Link to={`/header`}>Header</Link></div>);
// const Footer = () => (<div><Link to={`/footer`}>Footer</Link></div>);

export class Root extends Component {
    render() {
        return (
            <div>
                <Header/>
                {this.props.children}
                <Footer/>
            </div>
        );
    }
}

const routes = {
    path: '/',
    component: Root,
    indexRoute: { component: Home },
    childRoutes: [
        { path: 'scientists', component: ScientistsIndex },

    ]
};

const App = () => (
    <Router history={browserHistory} routes={routes}/>
);

export default App;