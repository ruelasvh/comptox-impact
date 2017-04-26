/**
 * Created by Victor H. Ruelas-Rivera on 4/26/17.
 * US EPA National Center for Computational Toxicology
 */

export const REQUEST_AUTHORIZATION = 'REQUEST_AUTHORIZATION';
function requestAuthorization() {
    return {
        type: REQUEST_AUTHORIZATION
    }
}

export const RECEIVE_AUTHORIZATION = 'RECEIVE_AUTHORIZATION';
function receiveAuthorization() {
    return {
        type: RECEIVE_AUTHORIZATION,
        payload: {
            isAuth: true,
            authorizedAt: Date.now()
        }
    }
}

function shouldGetAuthorization(state) {
    const { isAuthGAPI } = state.gapiAuthorization.isAuthGAPI;
    if ( isAuthGAPI ) {
        return false;
    } else {
        return true;
    }
}

export function getAuthorizationIfNeeded() {
    return (dispatch, getState) => {
        if (shouldGetAuthorization(getState())) {
            dispatch(requestAuthorization());
            return dispatch(receiveAuthorization());
        }
    }
}