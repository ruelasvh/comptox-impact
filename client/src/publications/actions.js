/**
 * Created by Victor H. Ruelas-Rivera on 3/29/17.
 * US EPA National Center for Computational Toxicology
 */
import Client from '../utils/Client';

// Actions, functions that return instructions and data payload to the reducers.
// Reducers change the state of the app.
export const REQUEST_PUBLICATIONS = 'REQUEST_PUBLICATIONS';
function requestPublications(limit, offset) {
    return {
        type: REQUEST_PUBLICATIONS,
        limit: limit,
        offset: offset
    }
}

export const RECEIVE_PUBLICATIONS = 'RECEIVE_PUBLICATIONS';
function receivePublications(json) {
    return {
        type: RECEIVE_PUBLICATIONS,
        data: normalizeData(json.data),
        receivedAt: Date.now(),
        limit: json.pagination.limit,
        offset: json.pagination.offset
    }
}

function normalizeData(jsonArr) {
    let publications = {};
    let allPublicationsIds = [];
    for (let publication of jsonArr) {
        publications = {
            ...publications,
            [publication.publication_id]: publication
        };
        allPublicationsIds.push(publication.publication_id);
    }
    return {
        publications,
        allPublicationsIds
    };
}

function fetchPublications(limit, offset) {
    return dispatch => {
        dispatch(requestPublications(limit, offset));
        return Client.searchPublications(limit, offset, json => dispatch(receivePublications(json)));
    }
}

function shouldFetchPublications(state) {
    const { byId } = state.entities.publications;
    if (Object.keys(byId).length === 0 && byId.constructor === Object) {
        return true;
    } else  if (state.entities.publications.isFetching) {
        return false;
    } else {
        return false;
    }
}

export function fetchPublicationsIfNeeded(limit, offset) {
    return (dispatch, getState) => {
        if (shouldFetchPublications(getState())) {
            return dispatch(fetchPublications(limit, offset))
        }
    }
}