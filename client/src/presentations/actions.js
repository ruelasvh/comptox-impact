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

export const RECEIVE_PRESENTATIONS = 'RECEIVE_PRESENTATIONS';
function receivePresentations(json) {
    return {
        type: RECEIVE_PRESENTATIONS,
        data: json,
        receivedAt: Date.now()
    }
}

export const RECEIVE_POSTERS = 'RECEIVE_POSTERS';
function receivePosters(json) {
    return {
        type: RECEIVE_POSTERS,
        data: json,
        receivedAt: Date.now()
    }
}

function fetchPresentations() {
    return dispatch => {
        dispatch(requestPresentations());
        return Client.searchPresentations(json => dispatch(receivePresentations(json)))
    }
}

function fetchPosters() {
    return dispatch => {
        dispatch(requestPosters());
        return Client.searchPosters(json => dispatch(receivePosters(json)))
    }
}

function shouldFetchPresentations(state) {
    const { all } = state.entities.presentations;
    if (typeof all !== 'undefined' && all.length === 0) {
        return true;
    } else if (state.entities.presentations.isFetching) {
        return false;
    } else {
        return false;
    }
}

function shouldFetchPosters(state) {
    const { all } = state.entities.posters;
    if (typeof all !== 'undefined' && all.length === 0) {
        return true;
    } else if (state.entities.posters.isFetching) {
        return false;
    } else {
        return false;
    }
}

export function fetchPresentationsIfNeeded() {
    return (dispatch, getState) => {
        if (shouldFetchPresentations(getState())) {
            return dispatch(fetchPresentations())
        }
    }
}

export function fetchPostersIfNeeded() {
    return (dispatch, getState) => {
        if (shouldFetchPosters(getState())) {
            return dispatch(fetchPosters())
        }
    }
}