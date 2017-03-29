/**
 * Created by Victor H. Ruelas-Rivera on 2/27/17.
 * US EPA National Center for Computational Toxicology
 */
import Client from '../utils/Client';

// Actions, i.e. what happened
export const REQUEST_HOME = 'REQUEST_HOME';
function requestHomeData() {
    return {
        type: REQUEST_HOME
    }
}

export const RECEIVE_HOME = 'RECEIVE_HOME';
function receiveHomeData(json) {
    return {
        type: RECEIVE_HOME,
        data: json,
        receivedAt: Date.now()
    }
}

function fetchHomeData() {
    return dispatch => {
        dispatch(requestHomeData());
        return Client.fetchHome(json => dispatch(receiveHomeData(json)));
    }
}

function shouldFetchHomeData(state) {
    const { homeData } = state.simpleHomeData;
    if (Object.keys(homeData).length === 0 && homeData.constructor === Object) {
        return true;
    } else if (state.simpleHomeData.isFetching) {
        return false;
    } else {
        return false;
    }
}

export function fetchHomeDataIfNeeded() {
    return (dispatch, getState) => {
        if (shouldFetchHomeData(getState())) {
            return dispatch(fetchHomeData())
        }
    }
}