/**
 * Created by Victor H. Ruelas-Rivera on 2/27/17.
 * US EPA National Center for Computational Toxicology
 */
import fetch from 'isomorphic-fetch';
import Client from '../utils/Client';

// Actions, i.e. what happened
export const REQUEST_HOME = 'REQUEST_HOME';
function requestHome() {
    return {
        type: REQUEST_HOME
    }
}

export const RECEIVE_HOME = 'RECEIVE_HOME';
function receiveHome(json) {
    return {
        type: RECEIVE_HOME,
        json: json,
        receivedAt: Date.now()
    }
}

export const INVALIDATE_HOME = 'INVALIDATE_HOME';
function invalidateHome() {
    return {
        type: INVALIDATE_HOME
    }
}

function fetchHome() {
    return dispatch => {
        dispatch(requestHome());
        return Client.fetchHome(json => dispatch(receiveHome(json)));
    }
}

function shouldFetchHome(state) {
    if (!state) {
        return true;
    } else if (state.isFetching) {
        return false;
    } else {
        return state.didInvalidate;
    }
}

export function fetchHomeIfNeeded() {
    return (dispatch, getState) => {
        if (shouldFetchHome(getState())) {
            return dispatch(fetchHome())
        }
    }
}