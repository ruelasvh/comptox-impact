/**
 * Created by Victor H. Ruelas-Rivera on 3/29/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { connect } from 'react-redux';
import { fetchPublicationsIfNeeded } from '../actions';

export class PublicationsList extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.fetchPublicationsIfNeeded();
    }

    render() {
        console.log('props: ', this.props);
        return (
            <div></div>
        )
    }
}

PublicationsList.propTypes = {};


export default PublicationsList;