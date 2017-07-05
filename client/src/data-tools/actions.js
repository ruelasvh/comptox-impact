/**
 * Created by Victor H. Ruelas-Rivera on 4/26/17.
 * US EPA National Center for Computational Toxicology
 */
import { queryGAApi, ftpTreeMetrics, ftpMonthTop10, ftpYearTop10 } from '../utils/Client';
import moment from 'moment';

// Actions, functions that return instructions and data payload to the reducers.
// Reducers change the sate of the app.
export const REQUEST_ANALYTICS = 'REQUEST_ANALYTICS';
function requestAnalytics() {
    return {
        type: REQUEST_ANALYTICS
    }
}

export const RECEIVE_ANALYTICS = 'RECEIVE_ANALYTICS';
function receiveAnalytics(json, app, section) {
  const obj = {
    type: RECEIVE_ANALYTICS,
    receivedAt: Date.now(),
    analytics: {}
  }
  obj.analytics[app] = {}
  obj.analytics[app][section] = normalize(json)
  return obj
}

const appGoogleAPI_ids = {
  // Page Views, Unique Page Views, Country Month, Country Year
  // Domain Month, Domain Year, State Month, State Year
  comptoxdashboard: {
    usage: [
      'ICA5JEKDA', 'IDa44YKDA', 'IDA-pMKDA', 'MCoppsJDA',
      'ID8qZ8KDA', 'ICZ0oUKDA', 'ID4-4IKDA', 'MCoppsKDA'
    ],
    datadownloads: [
      'MCo6JMJDA','ICZ54MLDA','IC-7ZoKDA','ICv4ZkLDA',
      'ICdlIcKDA','IC-8YsJDA','ICv9YQLDA','ID8vYELDA',
    ]
  },
  actor: { usage: [
    'IDruI8KDA','MCo_IoJDA','ID8vYEKDA','ICv9YQKDA',
    'IC-8YsKDA','ID8qZ8JDA','IC63J8JDA','ICEtIoKDA',
  ] },
  cpcat: { usage: [
    'IDrop4KDA','IDZ8JILDA','IDAnIILDA','MCosYYKDA',
    'ICEypsKDA','ICE3oYKDA','ID89o4JDA','ICZ54MJDA',
  ] },
  edsp21: { usage: [
    'MCo_IoLDA','IDruI8JDA','IDrop4JDA','IDZ8NIIDA',
    'IDAnMIIDA','MCosYYJDA','ID8vYEJDA','ICv9YQJDA',
  ] },
  toxcast: {
    usage: [
      'IDA-pMJDA','MCoppsLDA','IDZrIsJDA','ICEtIoJDA',
      'IC63J8LDA','IDZ8NIKDA','IDAnMIKDA','MCosYYLDA',
    ],
    datadownloads: [
      'ICv4dkIDA','ICdwJoJDA','ICdipYKDA','MCo6JMLDA',
      'ICZ58MIDA','ICEtIoLDA','IC63N8IDA','ID8qZ8LDA',
    ]
  },
  dsstox: { datadownloads: [
    'IC6qI4JDA','ICEoJMJDA','ICdwJoLDA','ICdipYJDA',
    'MCo6NMIDA','ICZ58MKDA','ICEtMoIDA','IC63N8KDA',
  ] }
}
function fetchAnalytics(app, section) {
  return dispatch => {
    dispatch(requestAnalytics());
    Promise.all(appGoogleAPI_ids[app][section].map(id => queryGAApi(id))).then(results => dispatch(receiveAnalytics(results, app, section)))
  }
}

function sliceTime(data) {
  if(!data.hasOwnProperty('rows') || data.rows.length === 0) {
    return {};
  }
  let times = {};
  data.rows.forEach(row => {
    if(times.hasOwnProperty(row[1])) {
      times[row[1]].push({ name: row[0], count: parseInt(row[2]) });
    } else {
      times[row[1]] = [ { name: row[0], count: parseInt(row[2]) } ];
    }
  });

  let timekeys = Object.keys(times).sort();
  let time = timekeys.length > 1 ? timekeys[timekeys.length - 2] : timekeys[0];
  const timeperiod = time.length > 4 ? moment(time + '01').format('MMM YYYY') : time;
  
  return { data: times[time], timeperiod };
}

function normalize(results) {
  return {
    pageViews: results[0],
    uniquePageViews: results[1],
    countryMonth: sliceTime(results[2]),
    countryYear: sliceTime(results[3]),
    domainMonth: sliceTime(results[4]),
    domainYear: sliceTime(results[5]),
    stateMonth: sliceTime(results[6]),
    stateYear: sliceTime(results[7])
  }
}

function shouldFetchAnalytics(state, app, section) {
  const analytics = state.entities.datasets.analytics;
  return Object.keys(analytics[app][section]).length === 0 && analytics[app][section].constructor === Object
}

export function fetchAnalyticsIfNeeded(app, section) {
  return (dispatch, getState) => {
    if (shouldFetchAnalytics(getState(), app, section)) {
      return dispatch(fetchAnalytics(app, section));
    }
  }
}
/*
  comptoxdashboard.filedownloads = {
    tree: {
      name: '/',
      count: 'Count',
      uniqueCount: 'Unique Count',
      children: [ results[64] ]
    },
    month: {
      data: results[65].data,
      timeperiod: moment(results[65].month + '01').format('MMM YYYY')
    },
    year: {
      data: results[66].data,
      timeperiod: results[66].year
    }
  };
  toxcast.filedownloads = {
    tree: {
      name: '/',
      count: 'Count',
      uniqueCount: 'Unique Count',
      children: [ results[67] ]
    },
    month: {
      data: results[68].data,
      timeperiod: moment(results[68].month + '01').format('MMM YYYY')
    },
    year: {
      data: results[69].data,
      timeperiod: results[69].year
    }
  }
  dsstox.filedownloads = {
    tree: {
      name: '/',
      count: 'Count',
      uniqueCount: 'Unique Count',
      children: [ results[70] ]
    },
    month: {
      data: results[71].data,
      timeperiod: moment(results[71].month + '01').format('MMM YYYY')
    },
    year: {
      data: results[72].data,
      timeperiod: results[72].year
    }
  }
  */
/*
// Internal FTP Metrics API
ftpTreeMetrics('comptox'),
ftpMonthTop10('comptox'),
ftpYearTop10('comptox'),
ftpTreeMetrics('toxcast'),
ftpMonthTop10('toxcast'),
ftpYearTop10('toxcast'),
ftpTreeMetrics('dsstox'),
ftpMonthTop10('dsstox'),
ftpYearTop10('dsstox')
*/
