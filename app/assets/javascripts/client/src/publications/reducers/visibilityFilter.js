/**
 * Created by Victor H. Ruelas-Rivera on 4/3/17.
 * US EPA National Center for Computational Toxicology
 */
import { SET_VISIBILITY_FILTER } from '../actions'

function visibilityFilter(state = 'SHOW_ALL', action) {
    switch (action.type) {
        case 'SET_VISIBILITY_FILTER':
            return action.filter;
        default:
            return state;
    }
}

export default visibilityFilter;