/**
 * Created by Victor H. Ruelas-Rivera on 4/4/17.
 * US EPA National Center for Computational Toxicology
 */
import { REQUEST_SCIENTISTS, RECEIVE_SCIENTISTS } from '../actions';
import State from '../model';

const initialState = State;

function scientists(state = initialState, action) {
    switch (action.type) {
        case REQUEST_SCIENTISTS:
            return Object.assign({}, state, {
                isFetching: true
            });
        case RECEIVE_SCIENTISTS:
            return Object.assign({}, state, {
                isFetching: false,
                lastUpdated: action.receivedAt,
                byId: action.data.scientists,
                allIds: action.data.allScientistsIds
            })
        default:
            return state;
    }
}

export default scientists;