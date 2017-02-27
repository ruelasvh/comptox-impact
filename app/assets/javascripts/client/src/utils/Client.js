/**
 * Created by Victor H. Ruelas-Rivera on 2/8/17.
 * US EPA National Center for Computational Toxicology
 */
/* eslint-disable no-undef */
import { relativePath } from '../App';

function fetchHome(callback) {
    return fetch(`${relativePath}/api/home`, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback);
}

function searchScientists(callback) {
    return fetch(`${relativePath}/api/scientists`, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback);
}

function searchScientist(id, callback) {
    return fetch(`${relativePath}/api/scientists/${id}`, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback)
}

function checkStatus(response) {
    if (response.status >= 200 && response.status < 300) {
        return response;
    } else {
        const error = new Error(`HTTP Error ${response.statusText}`);
        error.status = response.statusText;
        error.response = response;
        console.log(error); // eslint-disable-line no-console
        throw error;
    }
}

function parseJSON(response) {
    return response.json();
}

const Client = { fetchHome, searchScientists, searchScientist };
export default Client;