/**
 * Created by vruelasr on 7/12/17.
 */
import { REQUEST_POSTERS, RECEIVE_ALL_POSTERS, RECEIVE_POSTERS_BY_AUTHOR } from '../actions';
import State from '../model';

const initialState = State;

function posters(state = initialState, action) {
    switch (action.type) {
        case REQUEST_POSTERS:
            return Object.assign({}, state, {
                isFetching: true
            });
        case RECEIVE_ALL_POSTERS:
            return Object.assign({}, state, {
                isFetching: false,
                lastUpdated: action.receivedAt,
                all: action.data
            });
        case RECEIVE_POSTERS_BY_AUTHOR:
            return Object.assign({}, state, {
                isFetching: false,
                lastUpdated: action.receivedAt,
                byAuthor: {
                    ...state.byAuthor,
                    [action.scientistId]: action.data
                }
            });
        default:
            return state;
    }
}

export default posters;