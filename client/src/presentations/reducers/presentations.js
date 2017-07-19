/**
 * Created by vruelasr on 7/11/17.
 */

import { REQUEST_PRESENTATIONS, RECEIVE_ALL_PRESENTATIONS, RECEIVE_PRESENTATIONS_BY_AUTHOR } from '../actions';
import State from '../model';

const initialState = State;

function presentations(state = initialState, action) {
    switch (action.type) {
        case REQUEST_PRESENTATIONS:
            return Object.assign({}, state, {
                isFetching: true
            });
        case RECEIVE_ALL_PRESENTATIONS:
            return Object.assign({}, state, {
                isFetching: false,
                lastUpdated: action.receivedAt,
                all: action.data
            });
        case RECEIVE_PRESENTATIONS_BY_AUTHOR:
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

export default presentations;