/**
 * Created by Victor H. Ruelas-Rivera on 4/26/17.
 * US EPA National Center for Computational Toxicology
 */
import { queryGAApi, ftpTreeMetrics, ftpMonthTop10, ftpYearTop10, ftpMetricsInfoCountCountry, ftpMetricsInfoCountState, ftpMetricsInfoDomain, ftpMetricsAppVisitsCount } from '../utils/Client';
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
function receiveAnalytics(json) {
    return {
        type: RECEIVE_ANALYTICS,
        analytics: normalize(json),
        receivedAt: Date.now()
    }
}

function fetchAnalytics() {
    return dispatch => {
        dispatch(requestAnalytics());
        Promise.all([
            /* CompTox Dashboard */
            queryGAApi('ICA5JEKDA'), // Page Views
            queryGAApi('IDa44YKDA'), // Unique Page Views
            queryGAApi('IDA-pMKDA'), // Country Month
            queryGAApi('MCoppsJDA'), // Country Year
            queryGAApi('ID8qZ8KDA'), // Domain Month
            queryGAApi('ICZ0oUKDA'), // Domain Year
            queryGAApi('ID4-4IKDA'), // State Month
            queryGAApi('MCoppsKDA'), // State Year
            /* ACToR */
            queryGAApi('IDruI8KDA'), // Page Views
            queryGAApi('MCo_IoJDA'), // Unique Page Views
            queryGAApi('ID8vYEKDA'), // Country Month
            queryGAApi('ICv9YQKDA'), // Country Year
            queryGAApi('IC-8YsKDA'), // Domain Month
            queryGAApi('ID8qZ8JDA'), // Domain Year
            queryGAApi('IC63J8JDA'), // State Month
            queryGAApi('ICEtIoKDA'), // State Year
            /* CPCat */
            queryGAApi('IDrop4KDA'), // Page Views
            queryGAApi('IDZ8JILDA'), // Unique Page Views
            queryGAApi('IDAnIILDA'), // Country Month
            queryGAApi('MCosYYKDA'), // Country Year
            queryGAApi('ICEypsKDA'), // Domain Month
            queryGAApi('ICE3oYKDA'), // Domain Year
            queryGAApi('ID89o4JDA'), // State Month
            queryGAApi('ICZ54MJDA'), // State Year
            /* EDSP21 */
            queryGAApi('MCo_IoLDA'), // Page Views
            queryGAApi('IDruI8JDA'), // Unique Page Views
            queryGAApi('IDrop4JDA'), // Country Month
            queryGAApi('IDZ8NIIDA'), // Country Year
            queryGAApi('IDAnMIIDA'), // Domain Month
            queryGAApi('MCosYYJDA'), // Domain Year
            queryGAApi('ID8vYEJDA'), // State Month
            queryGAApi('ICv9YQJDA'), // State Year
            /* ToxCast */
            queryGAApi('IDA-pMJDA'), // Page Views
            queryGAApi('MCoppsLDA'), // Unique Page Views
            queryGAApi('IDZrIsJDA'), // Country Month
            queryGAApi('ICEtIoJDA'), // Country Year
            queryGAApi('IC63J8LDA'), // Domain Month
            queryGAApi('IDZ8NIKDA'), // Domain Year
            queryGAApi('IDAnMIKDA'), // State Month
            queryGAApi('MCosYYLDA'), // State Year
            /* CompTox Download Drupal */
            queryGAApi('MCo6JMJDA'), // Page Views
            queryGAApi('ICZ54MLDA'), // Unique Page Views
            queryGAApi('IC-7ZoKDA'), // Country Month
            queryGAApi('ICv4ZkLDA'), // Country Year
            queryGAApi('ICdlIcKDA'), // Domain Month
            queryGAApi('IC-8YsJDA'), // Domain Year
            queryGAApi('ICv9YQLDA'), // State Month
            queryGAApi('ID8vYELDA'), // State Year
            /* ToxCast Download Drupal */
            queryGAApi('ICv4dkIDA'), // Page Views
            queryGAApi('ICdwJoJDA'), // Unique Page Views
            queryGAApi('ICdipYKDA'), // Country Month
            queryGAApi('MCo6JMLDA'), // Country Year
            queryGAApi('ICZ58MIDA'), // Domain Month
            queryGAApi('ICEtIoLDA'), // Domain Year
            queryGAApi('IC63N8IDA'), // State Month
            queryGAApi('ID8qZ8LDA'), // State Year
            /* DSSTox Download Drupal */
            queryGAApi('IC6qI4JDA'), // Page Views
            queryGAApi('ICEoJMJDA'), // Unique Page Views
            queryGAApi('ICdwJoLDA'), // Country Month
            queryGAApi('ICdipYJDA'), // Country Year
            queryGAApi('MCo6NMIDA'), // Domain Month
            queryGAApi('ICZ58MKDA'), // Domain Year
            queryGAApi('ICEtMoIDA'), // State Month
            queryGAApi('IC63N8KDA'), // State Year
            /* Internal FTP Metrics API */
            ftpTreeMetrics('comptox'), // 64th element
            ftpMonthTop10('comptox'),
            ftpYearTop10('comptox'),
            ftpTreeMetrics('toxcast'),
            ftpMonthTop10('toxcast'),
            ftpYearTop10('toxcast'),
            ftpTreeMetrics('dsstox'),
            ftpMonthTop10('dsstox'),
            ftpYearTop10('dsstox'),
            ftpMetricsInfoCountState('comptox'),
            ftpMetricsInfoCountCountry('comptox'),
            ftpMetricsInfoCountState('toxcast'),
            ftpMetricsInfoCountCountry('toxcast'),
            ftpMetricsInfoCountState('dsstox'),
            ftpMetricsInfoCountCountry('dsstox'),
            ftpMetricsInfoDomain('comptox'),
            ftpMetricsInfoDomain('toxcast'),
            ftpMetricsInfoDomain('dsstox'), // 81st element
            // CompTox New vs Returning users
            queryGAApi('IC5x5UKDA'), // New vs Returning users for 2016
            queryGAApi('MCYkZIKDA'), // New vs Returning users for 2017
            // CompTox Active Users
            queryGAApi('IDdjYwKDA'),
            // App visits from FTP Metrics API */
            ftpMetricsAppVisitsCount('comptox'), // 85th element
            ftpMetricsAppVisitsCount('toxcast'),
            ftpMetricsAppVisitsCount('dsstox'),
            // CompTox Data Website FTP metrics
            ftpTreeMetrics('comptoxdata'), // 88th element
            ftpMonthTop10('comptoxdata'),
            ftpYearTop10('comptoxdata'),
            ftpMetricsInfoCountState('comptoxdata'),
            ftpMetricsInfoCountCountry('comptoxdata'),
            ftpMetricsInfoDomain('comptoxdata'),
            ftpMetricsAppVisitsCount('comptoxdata'),

        ])
            .then(results => dispatch(receiveAnalytics(results)))
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
  let analytics = {
    comptoxdashboard: {
      usage: {},
      filedownloads: {}
    },
    actor: {
      usage: {},
      analog: {}
    },
    cpcat: {
      usage: {}
    },
    edsp21: {
      usage: {}
    },
    toxcast: {
      usage: {},
      datadownloads: {},
      filedownloads: {},
    },
    dsstox: {
      datadownloads: {},
      filedownloads: {}
    },
    comptox: {
        datadownloads: {},
        filedownloads: {}
    }
  };
  let comptoxdashboard = analytics.comptoxdashboard;
  let actor = analytics.actor;
  let cpcat = analytics.cpcat;
  let edsp21 = analytics.edsp21;
  let toxcast = analytics.toxcast;
  let dsstox = analytics.dsstox;
  let comptox = analytics.comptox;

  comptoxdashboard.usage = {
    pageViews: results[0],
    uniquePageViews: results[1],
    countryMonth: sliceTime(results[2]),
    countryYear: sliceTime(results[3]),
    domainMonth: sliceTime(results[4]),
    domainYear: sliceTime(results[5]),
    stateMonth: sliceTime(results[6]),
    stateYear: sliceTime(results[7]),
    newReturning: [
      {
          data: results[82],
          timeperiod: '2016'
      },
      {
          data: results[83],
          timeperiod: '2017'
      }
    ],
    activeUsers: results[84]

  };
  actor.usage = {
    pageViews: results[8],
    uniquePageViews: results[9],
    countryMonth: sliceTime(results[10]),
    countryYear: sliceTime(results[11]),
    domainMonth: sliceTime(results[12]),
    domainYear: sliceTime(results[13]),
    stateMonth: sliceTime(results[14]),
    stateYear: sliceTime(results[15])
  };
  cpcat.usage = {
    pageViews: results[16],
    uniquePageViews: results[17],
    countryMonth: sliceTime(results[18]),
    countryYear: sliceTime(results[19]),
    domainMonth: sliceTime(results[20]),
    domainYear: sliceTime(results[21]),
    stateMonth: sliceTime(results[22]),
    stateYear: sliceTime(results[23])
  };
  edsp21.usage = {
    pageViews: results[24],
    uniquePageViews: results[25],
    countryMonth: sliceTime(results[26]),
    countryYear: sliceTime(results[27]),
    domainMonth: sliceTime(results[28]),
    domainYear: sliceTime(results[29]),
    stateMonth: sliceTime(results[30]),
    stateYear: sliceTime(results[31])
  };
  toxcast.usage = {
    pageViews: results[32],
    uniquePageViews: results[33],
    countryMonth: sliceTime(results[34]),
    countryYear: sliceTime(results[35]),
    domainMonth: sliceTime(results[36]),
    domainYear: sliceTime(results[37]),
    stateMonth: sliceTime(results[38]),
    stateYear: sliceTime(results[39])
  };
  comptoxdashboard.datadownloads = {
    pageViews: results[40],
    uniquePageViews: results[41],
    countryMonth: sliceTime(results[42]),
    countryYear: sliceTime(results[43]),
    domainMonth: sliceTime(results[44]),
    domainYear: sliceTime(results[45]),
    stateMonth: sliceTime(results[46]),
    stateYear: sliceTime(results[47]),
  };
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
    },
    stateYear: {
        data: results[73],
        timeperiod: 'All'
    },
    countryYear: {
        data: results[74],
        timeperiod: 'All'
      },
    domain: {
        data: results[79].sort((a,b) => b.count - a.count),
        timeperiod: 'All'
    },
    visits: [{
      data: {
        rows: [
          ["New Users", results[85]["New Users"]],
          ["Returning Users", results[85]["Returning Users"]]
        ]
      },
      timeperiod: 'All'
    }]
  };
  toxcast.datadownloads = {
    pageViews: results[48],
    uniquePageViews: results[49],
    countryMonth: sliceTime(results[50]),
    countryYear: sliceTime(results[51]),
    domainMonth: sliceTime(results[52]),
    domainYear: sliceTime(results[53]),
    stateMonth: sliceTime(results[54]),
    stateYear: sliceTime(results[55]),
  };
  dsstox.datadownloads = {
    pageViews: results[56],
    uniquePageViews: results[57],
    countryMonth: sliceTime(results[58]),
    countryYear: sliceTime(results[59]),
    domainMonth: sliceTime(results[60]),
    domainYear: sliceTime(results[61]),
    stateMonth: sliceTime(results[62]),
    stateYear: sliceTime(results[63]),
  };
  comptox.datadownloads = {
      pageViews: results[40],
      uniquePageViews: results[41],
      countryMonth: sliceTime(results[42]),
      countryYear: sliceTime(results[43]),
      domainMonth: sliceTime(results[44]),
      domainYear: sliceTime(results[45]),
      stateMonth: sliceTime(results[46]),
      stateYear: sliceTime(results[47]),
  };
  comptox.filedownloads = {
    tree: {
      name: '/',
      count: 'Count',
      uniqueCount: 'Unique Count',
      children: [ results[88][0],results[88][1],results[88][2],results[88][3],results[88][4],results[88][5], ]
    },
    month: {
      data: results[89].data,
      timeperiod: moment(results[89].month + '01').format('MMM YYYY')
    },
    year: {
      data: results[90].data,
      timeperiod: results[90].year
    },
    stateYear: {
      data: results[91],
      timeperiod: 'All'
    },
    countryYear: {
      data: results[92],
      timeperiod: 'All'
    },
    domain: {
      data: results[93].sort((a,b) => b.count - a.count),
      timeperiod: 'All'
    },
    visits: [{
      data: {
        rows: [
          ["New Users", results[94]["New Users"]],
          ["Returning Users", results[94]["Returning Users"]]
        ]
      },
      timeperiod: 'All'
    }]
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
    },
      stateYear: {
        data: results[75],
          timeperiod: 'All'
      },
      countryYear: {
        data: results[76],
          timeperiod: 'All'
      },
      domain: {
        data: results[80].sort((a,b) => b.count - a.count),
          timeperiod: 'All'
      },
    visits: [{
      data: {
        rows: [
          ["New Users", results[86]["New Users"]],
          ["Returning Users", results[86]["Returning Users"]]
        ]
      },
      timeperiod: 'All'
    }]
  };
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
    },
      stateYear: {
        data: results[77],
          timeperiod: 'All'
      },
      countryYear: {
        data: results[78],
          timeperiod: 'All'
      },
      domain: {
        data: results[81].sort((a,b) => b.count - a.count),
          timeperiod: 'All'
      },
      visits: [{
        data: {
          rows: [
            ["New Users", results[87]["New Users"]],
            ["Returning Users", results[87]["Returning Users"]]
          ]
        },
        timeperiod: 'All'
      }]
  };

  return analytics;
}

function shouldFetchAnalytics(state) {
    const analytics = state.entities.datasets.analytics;
    if (Object.keys(analytics).length === 0 && analytics.constructor === Object) {
            return true;
    } else if (analytics.isFetching) {
        return false;
    } else {
        return false;
    }
}

export function fetchAnalyticsIfNeeded() {
    return (dispatch, getState) => {
        if (shouldFetchAnalytics(getState())) {
            return dispatch(fetchAnalytics());
        }
    }
}
