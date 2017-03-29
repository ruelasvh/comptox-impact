/**
 * Created by Victor H. Ruelas-Rivera on 2/27/17.
 * US EPA National Center for Computational Toxicology
 */
import { REQUEST_HOME, RECEIVE_HOME} from './actions';
import State from './model';

const initialState = State;

function homeData(state = initialState, action) {
    switch (action.type) {
        case REQUEST_HOME:
            return Object.assign({}, state, {
                isFetching: true
            });
        case RECEIVE_HOME:
            return Object.assign({}, state, {
                isFetching: false,
                lastUpdated: action.receivedAt,
                homeData: action.data
            });
        default:
            return state;
    }
}

export default homeData;