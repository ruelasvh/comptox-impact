/**
 * Created by Victor H. Ruelas-Rivera on 1/27/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Navbar, Nav, NavDropdown, MenuItem } from 'react-bootstrap';
import './styles/toolbar.css';

const ToolBar = ( { currentUri } ) => (
    <Navbar id="secondary-navbar" className="navbar-static-top" fluid >
        <Navbar.Collapse>
            <Nav pullRight>
                <NavDropdown id="share-nav-dropdown" className="navbar-static-top-share-dropdown" eventKey={0} title="Share" >
                    <MenuItem
                        eventKey="1"
                        href={"https://www.facebook.com/sharer/sharer.php?u=http://comptox.ag.epa.gov/impact" + currentUri}
                        target="_blank">
                        <i className="fa fa-facebook-official fa-lg" aria-hidden="true"></i> Facebook
                    </MenuItem>
                    <MenuItem
                        eventKey="1"
                        href={"https://twitter.com/home?status=http://comptox.ag.epa.gov/impact" + currentUri}
                        target="_blank">
                        <i className="fa fa-twitter-square fa-lg" aria-hidden="true"></i> Twitter
                    </MenuItem>
                    <MenuItem
                        eventKey="1"
                        href={"https://plus.google.com/share?url=http://comptox.ag.epa.gov/impact" + currentUri}
                        target="_blank">
                        <i className="fa fa-google-plus-square fa-lg" aria-hidden="true"></i> Google Plus
                    </MenuItem>
                    <MenuItem
                        eventKey="1"
                        href={"mailto:?subject=CompTox%20Dashboard%20Information%20on%20Tetrahydrocannabinol&body=http://comptox.ag.epa.gov/impact" + currentUri}
                        target="_blank">
                        <i className="fa fa-envelope-square fa-lg" aria-hidden="true"></i> Email
                    </MenuItem>
                </NavDropdown>
            </Nav>
        </Navbar.Collapse>
    </Navbar>
);

ToolBar.propTypes = {
    currentUri: React.PropTypes.string
};

export default ToolBar;