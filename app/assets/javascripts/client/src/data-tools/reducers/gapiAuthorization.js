/**
 * Created by Victor H. Ruelas-Rivera on 4/26/17.
 * US EPA National Center for Computational Toxicology
 */
import { REQUEST_AUTHORIZATION, RECEIVE_AUTHORIZATION } from '../actions';
import State from '../model';

const initialState = State;

function gapiAuthorization(state = initialState, action) {
    switch (action.type) {
        case REQUEST_AUTHORIZATION:
            return Object.assign({}, state, {
                isAuthGAPI: false
            });
        case RECEIVE_AUTHORIZATION:
            return Object.assign({}, state, {
                isAuthGAPI: action.payload.isAuth,
                lastAuthorized: action.payload.authorizedAt
            });
        default:
            return state;
    }
}

export default gapiAuthorization;