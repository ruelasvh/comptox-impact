/**
 * Created by Victor H. Ruelas-Rivera on 2/8/17.
 * US EPA National Center for Computational Toxicology
 */
/* eslint-disable no-undef */
function searchHome(callback) {
    return fetch(`api/home`, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback);
}

function searchScientists(callback) {
    return fetch(`api/scientists`, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback);
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

const Client = { searchHome, searchScientists };
export default Client;