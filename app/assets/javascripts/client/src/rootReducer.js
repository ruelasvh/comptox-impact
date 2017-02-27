/**
 * Created by Victor H. Ruelas-Rivera on 2/27/17.
 * US EPA National Center for Computational Toxicology
 */
import { combineReducers } from 'redux';
import homeReducer from './home/reducers';

const rootReducer = combineReducers({homeReducer});

export default rootReducer;