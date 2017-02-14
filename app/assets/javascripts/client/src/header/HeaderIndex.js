/**
 * Created by Victor H. Ruelas-Rivera on 1/26/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Navbar, Nav, NavDropdown, MenuItem } from 'react-bootstrap';
import { Link } from 'react-router';
import ToolBar from './ToolBar';
import logo from './img/epa_logo.png';
import './HeaderIndex.css';

const HeaderIndex = ( { currentUri } ) => (
    <div>
        <Navbar id="primary-navbar" className="navbar-fixed-top" role="navigation" fluid>
            <Navbar.Header>
                <Navbar.Brand>
                    <a className="navbar-logo" href="https://epa.gov" target="_blank">
                        <img src={logo} alt="EPA_Logo"/>
                    </a>
                </Navbar.Brand>
                <Navbar.Toggle />
            </Navbar.Header>
            <Navbar.Collapse>
                <div className="navbar-fixed-top-links">
                    <li><a href="#contact">Contact Us</a></li>
                    <li><a href="https://epa.gov/comptox" target="_blank">About Us</a></li>
                    <li><Link to="/">Home</Link></li>
                </div>
            </Navbar.Collapse>
        </Navbar>
        <ToolBar currentUri={currentUri}/>
    </div>
);

HeaderIndex.propTypes = {
    currentUri: React.PropTypes.string
};

export default HeaderIndex;