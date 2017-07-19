/**
 * Created by vruelasr on 7/11/17.
 */
import Client from '../utils/Client';

// Actions, functions that return instructions and data payload to the reducers.
// Reducers change the state of the app.
export const REQUEST_PRESENTATIONS = 'REQUEST_PRESENTATIONS';
function requestPresentations() {
    return {
        type: REQUEST_PRESENTATIONS
    }
}

export const REQUEST_POSTERS = 'REQUEST_POSTERS';
function requestPosters() {
    return {
        type: REQUEST_POSTERS
    }
}

export const RECEIVE_ALL_PRESENTATIONS = 'RECEIVE_ALL_PRESENTATIONS';
function receivePresentations(json) {
    return {
        type: RECEIVE_ALL_PRESENTATIONS,
        data: json,
        receivedAt: Date.now()
    }
}

export const RECEIVE_PRESENTATIONS_BY_AUTHOR = 'RECEIVE_PRESENTATIONS_BY_AUTHOR';
function receivePresentationsByAuthor(scientistId,json) {
    return {
        type: RECEIVE_PRESENTATIONS_BY_AUTHOR,
        data: json,
        scientistId: scientistId,
        receivedAt: Date.now()
    }
}

export const RECEIVE_ALL_POSTERS = 'RECEIVE_ALL_POSTERS';
function receivePosters(json) {
    return {
        type: RECEIVE_ALL_POSTERS,
        data: json,
        receivedAt: Date.now()
    }
}

export const RECEIVE_POSTERS_BY_AUTHOR = 'RECEIVE_POSTERS_BY_AUTHOR';
function receivePostersByAuthor(scientistId, json) {
    return {
        type: RECEIVE_POSTERS_BY_AUTHOR,
        data: json,
        scientistId: scientistId,
        receivedAt: Date.now()
    }
}

function fetchPresentations(options) {
    return dispatch => {
        dispatch(requestPresentations());
        function getPresentations(options) {
            switch (options.filter) {
                case 'ALL':
                    return Client.searchPresentations(json => dispatch(receivePresentations(json)))
                case 'BY_AUTHOR':
                    return Client.searchPresentationsByAuthor(options.scientistName, json => dispatch(receivePresentationsByAuthor(options.scientistId, json)))
                default:
            }
        }
        return getPresentations(options)

    }
}

function fetchPosters(options) {
    return dispatch => {
        dispatch(requestPosters());
        function getPosters(options) {
            switch (options.filter) {
                case 'ALL':
                    return Client.searchPosters(json => dispatch(receivePosters(json)))
                case 'BY_AUTHOR':
                    return Client.searchPostersByAuthor(options.scientistName, json => dispatch(receivePostersByAuthor(options.scientistId, json)))
                default:
            }
        }
        return getPosters(options)
    }
}

function shouldFetchPresentations(options, state) {
    const { all, byAuthor } = state.entities.presentations;
    switch (options.filter) {
        case 'ALL':
            if (typeof all !== 'undefined' && all.length === 0) {
                return true;
            } else if (state.entities.presentations.isFetching) {
                return false;
            } else {
                return false;
            }
        case 'BY_AUTHOR':
            if (typeof byAuthor[options.scientistId] === 'undefined') {
                return true;
            } else if (state.entities.presentations.isFetching) {
                return false;
            } else {
                return false;
            }
    }

}

function shouldFetchPosters(options, state) {
    const { all, byAuthor } = state.entities.posters;
    switch (options.filter) {
        case 'ALL':
            if (typeof all !== 'undefined' && all.length === 0) {
                return true;
            } else if (state.entities.posters.isFetching) {
                return false;
            } else {
                return false;
            }
        case 'BY_AUTHOR':
            if (typeof byAuthor[options.scientistId] === 'undefined') {
                return true;
            } else if (state.entities.posters.isFetching) {
                return false;
            } else {
                return false;
            }
    }

}

export function fetchPresentationsIfNeeded(options) {
    return (dispatch, getState) => {
        if (shouldFetchPresentations(options, getState())) {
            return dispatch(fetchPresentations(options))
        }
    }
}

export function fetchPostersIfNeeded(options) {
    return (dispatch, getState) => {
        if (shouldFetchPosters(options, getState())) {
            return dispatch(fetchPosters(options))
        }
    }
}