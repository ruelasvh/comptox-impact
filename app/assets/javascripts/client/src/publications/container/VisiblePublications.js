/**
 * Created by Victor H. Ruelas-Rivera on 4/3/17.
 * US EPA National Center for Computational Toxicology
 */
import { connect } from 'react-redux';
import PublicationsList from '../components/PublicationsList';
import { fetchPublicationsIfNeeded } from '../actions';

const getVisiblePublications = (publications, filter) => {
    switch (filter) {
        case 'SHOW_ALL':
            return publications;
        case 'SHOW_2013':
            return publications.filter()
    }
}


const mapStateToProps = (state) => {
    const {
        isFetching,
        byId,
        visibilityFilter,
        limit,
        offset
    } = state.entities.publications || {
        isFetching: false,
        byId: {},
        visibilityFilter: 'SHOW_ALL',
        limit: null,
        offset: null
    };
    const visiblePublications = getVisiblePublications(byId, visibilityFilter);
    return {
        isFetching,
        visiblePublications,
        limit,
        offset
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        fetchPublicationsIfNeeded: () => {
            dispatch(fetchPublicationsIfNeeded())
        }
    }
}

const VisiblePublicationsList = connect(
    mapStateToProps,
    mapDispatchToProps
)(PublicationsList);

export default VisiblePublicationsList;

