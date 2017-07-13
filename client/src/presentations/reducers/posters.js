/**
 * Created by vruelasr on 7/12/17.
 */
import { REQUEST_POSTERS, RECEIVE_POSTERS } from '../actions';
import State from '../model';

const initialState = State;

function posters(state = initialState, action) {
    switch (action.type) {
        case REQUEST_POSTERS:
            return Object.assign({}, state, {
                isFetching: true
            });
        case RECEIVE_POSTERS:
            return Object.assign({}, state, {
                isFetching: false,
                lastUpdated: action.receivedAt,
                all: action.data
            });
        default:
            return state;
    }
}

export default posters;