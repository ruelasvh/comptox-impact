/**
 * Created by Victor H. Ruelas-Rivera on 2/27/17.
 * US EPA National Center for Computational Toxicology
 */
import { combineReducers } from 'redux';
import simpleHomeData from './home/reducers';
import scientists from './scientists/reducers/scientists';
import publications from './publications/reducers/publications';
import presentations from './presentations/reducers/presentations';
import datasets from './data-tools/reducers/datasets';

function entities(state = {}, action) {
    return {
        scientists: scientists(state.scientists, action),
        publications: publications(state.publications, action),
        presentations: presentations(state.presentations, action),
        datasets: datasets(state.datasets, action)
    }
}

const rootReducer = combineReducers({ simpleHomeData, entities });

export default rootReducer;
