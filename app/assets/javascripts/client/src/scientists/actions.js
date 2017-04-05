/**
 * Created by Victor H. Ruelas-Rivera on 4/4/17.
 * US EPA National Center for Computational Toxicology
 */
import Client from '../utils/Client';

// Actions describe how the app state will be changed

export const REQUEST_SCIENTISTS = 'REQUEST_SCIENTISTS';
function requestScientists() {
    return {
        type: REQUEST_SCIENTISTS
    }
}

export const RECEIVE_SCIENTISTS = 'RECEIVE_SCIENTISTS';
function receiveScientists(json) {
    return {
        type: RECEIVE_SCIENTISTS,
        data: normalizeData(json.data),
        receivedAt: Date.now()
    }
}

function normalizeData(jsonArr) {
    let scientists = {};
    let allScientistsIds = [];
    for (let publication of jsonArr) {
        scientists = {
            ...scientists,
            [publication.scientistId]: publication
        };
        allScientistsIds.push(publication.scientistId);
    }
    return {
        scientists,
        allScientistsIds
    };
}

export function fetchScientists() {
    return dispatch => {
        dispatch(requestScientists());
        return Client.searchScientists(json => dispatch(receiveScientists(json)));
    }
}

function shouldFetchScientists(state) {
    const { byId } = state.entities.scientists;
    if (Object.keys(byId).length === 0 && byId.constructor === Object) {
        return true;
    } else if (state.entities.scientists.isFetching) {
        return false;
    } else {
        return false;
    }
}

export function fetchScientistsIfNeeded() {
    return (dispatch, getState) => {
        if (shouldFetchScientists(getState())) {
            return dispatch(fetchScientists())
        }
    }
}