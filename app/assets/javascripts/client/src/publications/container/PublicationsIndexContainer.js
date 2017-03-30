/**
 * Created by Victor H. Ruelas-Rivera on 3/29/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { connect } from 'react-redux';
import { fetchPublicationsIfNeeded } from '../actions';

export class PublicationsIndexContainer extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount() {
        const { dispatch } = this.props;
        dispatch(fetchPublicationsIfNeeded(9,1));
    }

    render() {
        const { byId } = this.props;
        return (
            <div></div>
        )
    }
}

PublicationsIndexContainer.propTypes = {};

function mapStateToProps(state) {
    const {
        isFetching,
        byId,
        limit,
        offset
    } = state.entities.publications || {
        isFetching: false,
        byId: {},
        limit: null,
        offset: null
    };

    return {
        isFetching,
        byId,
        limit,
        offset
    };
}

export default connect(mapStateToProps)(PublicationsIndexContainer);