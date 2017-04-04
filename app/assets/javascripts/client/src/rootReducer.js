/**
 * Created by Victor H. Ruelas-Rivera on 2/27/17.
 * US EPA National Center for Computational Toxicology
 */
import { combineReducers } from 'redux';
import simpleHomeData from './home/reducers';
import publications from './publications/reducers/publications';
import publicationsVisibilityFilter from './publications/reducers/visibilityFilter';

function entities(state = {}, action) {
    return {
        publications: publications(state.publications, action)
    }
}

const rootReducer = combineReducers({ simpleHomeData, entities, publicationsVisibilityFilter });

export default rootReducer;