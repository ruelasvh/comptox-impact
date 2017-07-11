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

export const RECEIVE_PRESENTATIONS = 'RECEIVE_PRESENTATIONS';
function receivePresentations(json) {
    return {
        type: RECEIVE_PRESENTATIONS,
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

export function fetchPresentationsIfNeeded() {
    return (dispatch, getState) => {
        if (shouldFetchPresentations(getState())) {
            return dispatch(fetchPresentations())
        }
    }
}