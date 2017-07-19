/**
 * Created by Victor H. Ruelas-Rivera on 4/3/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { connect } from 'react-redux';
import Loader from 'react-loader';
import PublicationsList from '../components/PublicationsList';
import { fetchPublicationsIfNeeded } from '../actions';

const mapStateToProps = (state) => {
    const {
        isFetching,
        all,
        limit,
        offset
    } = state.entities.publications || {
        isFetching: false,
        all: [],
        visibilityFilter: 'SHOW_ALL',
        limit: null,
        offset: null
    };

    return {
        isFetching,
        publications: all,
        limit,
        offset
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        getPublications: () => {
            dispatch(fetchPublicationsIfNeeded())
        }
    }
}

export class VisiblePublications extends React.Component {
    componentDidMount() {
        this.props.getPublications();
    }

    render() {
        return (
            <Loader loaded={!this.props.isFetching}>
                <PublicationsList publications={this.props.publications} paginated/>
            </Loader>
        )
    }
}

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(VisiblePublications);
