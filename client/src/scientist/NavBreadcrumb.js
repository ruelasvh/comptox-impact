/**
 * Created by vruelasr on 6/28/17.
 */
import React from 'react'
import PropTypes from 'prop-types'
import { Link } from 'react-router';
import { Breadcrumb } from 'react-bootstrap';

const NavBreadcrumb = ({ firstName, lastName }) => (
    <Breadcrumb>
        <Breadcrumb.Item>
            <Link to="/">Home</Link>
        </Breadcrumb.Item>
        <Breadcrumb.Item>
            <Link to="/scientists">Scientists</Link>
        </Breadcrumb.Item>
        <Breadcrumb.Item active>
            {firstName + ' ' + lastName}
        </Breadcrumb.Item>
    </Breadcrumb>
)

NavBreadcrumb.propTypes ={
    firstName: PropTypes.string,
    lastName: PropTypes.string
}

export default NavBreadcrumb;