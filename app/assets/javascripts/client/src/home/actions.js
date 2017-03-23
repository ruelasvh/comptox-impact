/**
 * Created by Victor H. Ruelas-Rivera on 2/27/17.
 * US EPA National Center for Computational Toxicology
 */
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
        data: json,
        receivedAt: Date.now()
    }
}

function fetchHome() {
    return dispatch => {
        dispatch(requestHome());
        return Client.fetchHome(json => dispatch(receiveHome(json)));
    }
}

function shouldFetchHome(state) {
    const { homeData } = state.homeReducer;
    if (Object.keys(homeData).length === 0 && homeData.constructor === Object) {
        return true;
    } else if (state.homeReducer.isFetching) {
        return false;
    } else {
        return false;
    }
}

export function fetchHomeIfNeeded() {
    return (dispatch, getState) => {
        if (shouldFetchHome(getState())) {
            return dispatch(fetchHome())
        }
    }
}