/**
 * Created by Victor H. Ruelas-Rivera on 6/5/17.
 * US EPA National Center for Computational Toxicology
 */
import { REQUEST_ANALYTICS, RECEIVE_ANALYTICS } from '../actions';
import State from '../model';

const initialState = State;

function datasets(state = initialState, action) {
  let returnState
    switch (action.type) {
      case REQUEST_ANALYTICS:
        returnState = Object.assign({}, state)
        returnState.analytics.isFetching = true
        return returnState
      case RECEIVE_ANALYTICS:
        const app = Object.keys(action.analytics)[0]
        const section = Object.keys(action.analytics[app])[0]
        returnState = Object.assign({}, state, { lastUpdated: action.receivedAt })
        returnState.analytics[app][section] = Object.assign({}, state.analytics[app][section], action.analytics[app][section], { isFetching: false })
        return returnState
      default:
        return state;
    }
}

export default datasets;
