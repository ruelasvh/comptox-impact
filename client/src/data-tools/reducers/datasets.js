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
      return {
        ...state,
        analytics: {
          ...state['analytics'],
          [action.app]: {
            ...state['analytics'][action.app],
            isFetching: true
          }
        }
      }
    case RECEIVE_ANALYTICS:
      const data = action.data
      return {
        ...state,
        analytics: {
          ...state['analytics'],
          [action.app]: {
            ...data,
            isFetching: false,
            staleData: false
          }
        }
      }
      default:
          return state;
  }
}

export default datasets;
