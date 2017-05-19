/**
 * Created by Victor H. Ruelas-Rivera on 2/8/17.
 * US EPA National Center for Computational Toxicology
 */
/* eslint-disable no-undef */
import { relativePath } from '../App';
import fetch from 'isomorphic-fetch';

const absolutePath = (process.env.NODE_ENV === "production" ? "http://comptox.ag.epa.gov" : "http://localhost:3000");

if (process.env.NODE_ENV !== "production") {
    console.log("Hitting API at http://localhost:3000")
}

function searchHomeData(callback) {
    return fetch(`${absolutePath + relativePath}/api/home`, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback);
}

function searchScientists(callback) {
    return fetch(`${absolutePath + relativePath}/api/scientists`, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback);
}

function searchScientist(id, callback) {
    return fetch(`${absolutePath + relativePath}/api/scientists/${id}`, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback)
}

function searchScientistPhoto(imageURL, callback) {
    return fetch(imageURL)
        .then(function (response) {
            checkStatus(response);
            return response.blob();
        })
        .then(parseImage)
        .then(callback)
}

function searchPublications(limit, offset, callback) {
    let queryUrl = (typeof limit !== 'undefined') && (typeof offset !== 'undefined') ?
        `${absolutePath + relativePath}/api/publications?limit=${limit}&offset=${offset}` :
        `${absolutePath + relativePath}/api/publications?limit=0`;
    return fetch(queryUrl, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback)
}

export function queryGAApi(queryUrl) {
    return fetch(queryUrl, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
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

function parseImage(imageBlob) {
    return URL.createObjectURL(imageBlob);
}

function parseJSON(response) {
    return response.json();
}

const Client = {
    searchHomeData,
    searchScientists,
    searchScientist,
    searchScientistPhoto,
    searchPublications
};

export default Client;