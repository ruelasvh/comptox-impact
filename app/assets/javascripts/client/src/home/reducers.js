/**
 * Created by Victor H. Ruelas-Rivera on 2/27/17.
 * US EPA National Center for Computational Toxicology
 */
import { INVALIDATE_HOME, REQUEST_HOME, RECEIVE_HOME} from './actions';

const initialState = {
    isFetching: false,
    didInvalidate: false,
    data: {}
};

export default function home(state = initialState, action) {
    switch (action.type) {
        case INVALIDATE_HOME:
            return Object.assign({}, state, {
                didInvalidate: true
            });
        case REQUEST_HOME:
            return Object.assign({}, state, {
                isFetching: true,
                didInvalidate: false
            });
        case RECEIVE_HOME:
            return Object.assign({}, state, {
                isFetching: false,
                didInvalidate: false,
                data: action.json,
                lastUpdated: action.receivedAt
            });
        default:
            return state;
    }
}

