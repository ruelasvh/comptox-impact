/**
 * Created by Victor H. Ruelas-Rivera on 2/10/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { Component } from 'react';
import Header from './features/header/components/HeaderIndex';
import Footer from './features/footer/components/FooterIndex';

class App extends Component {
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

export default App;