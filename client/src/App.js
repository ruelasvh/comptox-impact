/**
 * Created by Victor H. Ruelas-Rivera on 2/10/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { Component } from 'react';
import { Router, IndexRoute } from 'react-router';
import { createHistory, useBasename } from 'history';
import { Provider } from 'react-redux';
import configureStore from './configureStore';

// components
import Header from './header/HeaderIndex';
import Footer from './footer/FooterIndex';
import Home from './home/components/HomeIndex';
import VisiblePublications from './publications/container/VisiblePublications';
import VisibleScientists from './scientists/containers/VisibleScientists';
import ScientistProfile from './scientist/ScientistProfile';
import DataToolsIndex from './data-tools/components/DataToolsMain';
import NotFound from './notfound/NotFound';

const store = configureStore();

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
export const relativePath = "/vruelasr-i";

const browserHistory = useBasename(createHistory)({
    basename: relativePath
});

const routes = {
    path: '/',
    component: Root,
    indexRoute: { component: Home },
    childRoutes: [
        { path: 'publications', component: VisiblePublications },
        { path: 'scientists', component: VisibleScientists },
        { path: 'scientists/:scientistId', component: ScientistProfile },
        { path: 'data-tools', component: DataToolsIndex },
        { path: '*', component: NotFound }
    ]
};

const App = () => (
    <Provider store={store}>
        <Router history={browserHistory} routes={routes}/>
    </Provider>
);

export default App;