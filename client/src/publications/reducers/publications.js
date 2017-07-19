/**
 * Created by Victor H. Ruelas-Rivera on 3/29/17.
 * US EPA National Center for Computational Toxicology
 */
import { REQUEST_PUBLICATIONS, RECEIVE_PUBLICATIONS } from '../actions';
import State from '../model';

const initialState = State;

function publications(state = initialState, action) {
    switch (action.type) {
        case REQUEST_PUBLICATIONS:
            return Object.assign({}, state, {
                isFetching: true,
                limit: action.limit,
                offset: action.offset
            });
        case RECEIVE_PUBLICATIONS:
            return Object.assign({}, state, {
                isFetching: false,
                lastUpdated: action.receivedAt,
                all: action.data.all,
                allIds: action.data.allIds,
                limit: action.limit,
                offset: action.offset
            });
        default:
            return state;
    }
}

export default publications;