/**
 * Created by Victor H. Ruelas-Rivera on 1/26/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Navbar, Nav, NavDropdown, MenuItem } from 'react-bootstrap';
import logo from '../img/epa_logo.png';
import '../styles/HeaderIndex.css';

const HeaderIndex = () => (
    <div>
        <Navbar id="primary-navbar" className="navbar-fixed-top" fluid className="navbar-fixed-top" role="navigation" >
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
                    <li><a href="/">Home</a></li>
                </div>
            </Navbar.Collapse>
        </Navbar>
    </div>
);

export default HeaderIndex;