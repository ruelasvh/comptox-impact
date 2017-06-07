/**
 * Created by Victor H. Ruelas-Rivera on 6/5/17.
 * US EPA National Center for Computational Toxicology
 */
import { REQUEST_ANALYTICS, RECEIVE_ANALYTICS } from '../actions';
import State from '../model';

const initialState = State;

function datasets(state = initialState, action) {
    switch (action.type) {
        case REQUEST_ANALYTICS:
            return Object.assign({}, state, {
                analytics: Object.assign({}, action.analytics, {
                    isFetching: true
                })
            });
        case RECEIVE_ANALYTICS:
            return Object.assign({}, state, {
                lastUpdated: action.receivedAt,
                analytics: Object.assign({}, action.analytics, {
                    isFetching: false
                })
            });
        default:
            return state;
    }
}

export default datasets;