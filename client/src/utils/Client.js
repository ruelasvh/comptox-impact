/**
 * Created by Victor H. Ruelas-Rivera on 2/8/17.
 * US EPA National Center for Computational Toxicology
 */
/* eslint-disable no-undef */
import { relativePath } from '../App';
import fetch from 'isomorphic-fetch';
import $ from 'jquery';

const absolutePath = (process.env.NODE_ENV === "production" ? "http://comptox.ag.epa.gov" : "http://localhost:3000");

if (process.env.NODE_ENV !== "production") {
    console.log("Hitting API at http://localhost:3000")
}

export function searchHomeData(callback) {
    return fetch(`${absolutePath + relativePath}/api/home`, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback);
}

export function searchScientists(callback) {
    return fetch(`${absolutePath + relativePath}/api/scientists`, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback);
}

export function searchScientist(id, callback) {
    return fetch(`${absolutePath + relativePath}/api/scientists/${id}`, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback)
}

export function createScientist(scientist, callback) {
    $.ajax({
        url: `${relativePath}/api/scientists`,
        type: 'POST',
        data: { scientist: scientist },
        success: callback
    });
}

export function deleteScientist(id, callback) {
    $.ajax({
        url: `${relativePath}/api/scientists/${id}`,
        type: 'DELETE',
        success: callback
    });
}

export function updateScientist(scientist, callback) {
    $.ajax({
        url: `${relativePath}/api/scientists/${scientist.scientistId}`,
        type: 'PUT',
        data: { scientist: scientist },
        success: callback
    })
}

export function searchScientistPhoto(imageURL, callback) {
    return fetch(imageURL)
        .then(function (response) {
            checkStatus(response);
            return response.blob();
        })
        .then(parseImage)
        .then(callback)
}

export function searchPublications(limit, offset, callback) {
    let queryUrl = (typeof limit !== 'undefined') && (typeof offset !== 'undefined') ?
        `${absolutePath + relativePath}/api/publications?limit=${limit}&offset=${offset}` :
        `${absolutePath + relativePath}/api/publications?limit=0`;
    return fetch(queryUrl, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback)
}

export function searchPresentations(callback) {
    let queryUrl = 'https://api.figshare.com/v2/projects/22852/articles?page_size=1000&order=published_date&order_direction=desc';
    return fetch(queryUrl, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback)
}

export function searchPresentationsByAuthor(authorName, callback) {
    $.ajax({
        url: 'https://api.figshare.com/v2/articles/search',
        type: 'POST',
        data: JSON.stringify({
            "search_for": `:author:${authorName}`,
            "item_type": 7,
            "limit": 1000,
            "offset": 1,
            "order": "published_date",
            "order_direction": "desc"
        }),
        contentType:"application/json; charset=utf-8",
        dataType:"json",
        success: callback
    })
}

export function searchPosters(callback) {
    let queryUrl = 'https://api.figshare.com/v2/projects/23335/articles?page_size=1000&order=published_date&order_direction=desc';
    return fetch(queryUrl, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
        .then(callback)
}

export function searchPostersByAuthor(authorName, callback) {
    $.ajax({
        url: 'https://api.figshare.com/v2/articles/search',
        type: 'POST',
        data: JSON.stringify({
            "search_for": `:author:${authorName}`,
            "item_type": 5,
            "limit": 1000,
            "offset": 1,
            "order": "published_date",
            "order_direction": "desc"
        }),
        contentType:"application/json; charset=utf-8",
        dataType:"json",
        success: callback
    })
}

export function queryGAApi(queryId) {
    return fetch('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAg' + queryId, {
        accept: 'application/json',
    }).then(checkStatus)
        .then(parseJSON)
}

export function ftpTreeMetrics(app) {
  return fetch(`${absolutePath + relativePath}/api/ftpmetrics/tree/${app}`, {
    accept: 'application/json',
  }).then(checkStatus)
    .then(parseJSON)
}

export function ftpMonthTop10(app) {
  return fetch(`${absolutePath + relativePath}/api/ftpmetricsby/month/${app}`, {
    accept: 'application/json',
  }).then(checkStatus)
    .then(parseJSON)
}

export function ftpYearTop10(app) {
  return fetch(`${absolutePath + relativePath}/api/ftpmetricsby/year/${app}`, {
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
    createScientist,
    deleteScientist,
    updateScientist,
    searchScientistPhoto,
    searchPublications,
    searchPresentations,
    searchPosters,
    searchPresentationsByAuthor,
    searchPosters,
    searchPostersByAuthor,
    queryGAApi,
    ftpTreeMetrics,
    ftpMonthTop10,
    ftpYearTop10
};

export default Client;
