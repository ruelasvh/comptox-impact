/**
 * Created by Victor H. Ruelas-Rivera on 2/27/17.
 * US EPA National Center for Computational Toxicology
 */
import { combineReducers } from 'redux';
import simpleHomeData from './home/reducers';
import publications from './publications/reducers/publications';
import scientists from './scientists/reducers/scientists';
import datasets from './data-tools/reducers/datasets';

function entities(state = {}, action) {
    return {
        scientists: scientists(state.scientists, action),
        publications: publications(state.publications, action),
        datasets: datasets(state.datasets, action)
    }
}

const rootReducer = combineReducers({ simpleHomeData, entities });

export default rootReducer;
