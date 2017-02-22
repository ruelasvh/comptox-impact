/**
 * Created by Victor H. Ruelas-Rivera on 2/10/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { Component } from 'react';
import { Router, IndexRoute } from 'react-router';
import { createHistory, useBasename } from 'history';

// components
import Header from './header/HeaderIndex';
import Footer from './footer/FooterIndex';
import Home from './home/HomeIndex';
import ScientistsIndex from './scientists/ScientistsIndex';
import ScientistProfile from './scientist/ScientistProfile';
import NotFound from './notfound/NotFound';

export class Root extends Component {
    render() {
        return (
            <div>
                <Header currentUri={this.props.location.pathname}/>
                {this.props.children}
                <Footer/>
            </div>
        );
    }
}

// Change to whichever subdomain this project will be deployed from, i.e.,
// comptox.ag.epa.gov/impact -- relativePath = "/impact"
export const relativePath = "";

const browserHistory = useBasename(createHistory)({
    basename: relativePath
});

const routes = {
    path: '/',
    component: Root,
    indexRoute: { component: Home },
    childRoutes: [
        { path: 'scientists', component: ScientistsIndex },
        { path: 'scientists/:scientistId', component: ScientistProfile },
        { path: '*', component: NotFound }

    ]
};

const App = () => (
    <Router history={browserHistory} routes={routes}/>
);

export default App;