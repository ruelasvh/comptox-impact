/**
 * Created by Victor H. Ruelas-Rivera on 4/26/17.
 * US EPA National Center for Computational Toxicology
 */
import { queryGAApi } from '../utils/Client';
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
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICA5JEKDA'), // Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDa44YKDA'), // Unique Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDA-pMKDA'), // Country Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCoppsJDA'), // Country Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID8qZ8KDA'), // Domain Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZ0oUKDA'), // Domain Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID4-4IKDA'), // State Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCoppsKDA'), // State Year
            /* ACToR */
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDruI8KDA'), // Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCo_IoJDA'), // Unique Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID8vYEKDA'), // Country Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICv9YQKDA'), // Country Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC-8YsKDA'), // Domain Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID8qZ8JDA'), // Domain Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC63J8JDA'), // State Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICEtIoKDA'), // State Year
            /* CPCat */
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDrop4KDA'), // Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDZ8JILDA'), // Unique Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDAnIILDA'), // Country Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCosYYKDA'), // Country Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICEypsKDA'), // Domain Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICE3oYKDA'), // Domain Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID89o4JDA'), // State Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZ54MJDA'), // State Year
            /* EDSP21 */
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCo_IoLDA'), // Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDruI8JDA'), // Unique Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDrop4JDA'), // Country Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDZ8NIIDA'), // Country Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDAnMIIDA'), // Domain Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCosYYJDA'), // Domain Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID8vYEJDA'), // State Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICv9YQJDA'), // State Year
            /* ToxCast */
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDA-pMJDA'), // Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCoppsLDA'), // Unique Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDZrIsJDA'), // Country Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICEtIoJDA'), // Country Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC63J8LDA'), // Domain Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDZ8NIKDA'), // Domain Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDAnMIKDA'), // State Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCosYYLDA'), // State Year
            /* CompTox Download Drupal */
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCo6JMJDA'), // Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZ54MLDA'), // Unique Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC-7ZoKDA'), // Country Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICv4ZkLDA'), // Country Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICdlIcKDA'), // Domain Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC-8YsJDA'), // Domain Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICv9YQLDA'), // State Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID8vYELDA'), // State Year
            /* ToxCast Download Drupal */
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICv4dkIDA'), // Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICdwJoJDA'), // Unique Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICdipYKDA'), // Country Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCo6JMLDA'), // Country Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZ58MIDA'), // Domain Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICEtIoLDA'), // Domain Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC63N8IDA'), // State Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID8qZ8LDA'), // State Year
            /* DSSTox Download Drupal */
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC6qI4JDA'), // Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICEoJMJDA'), // Unique Page Views
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICdwJoLDA'), // Country Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICdipYJDA'), // Country Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCo6NMIDA'), // Domain Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZ58MKDA'), // Domain Year
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICEtMoIDA'), // State Month
            queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC63N8KDA')  // State Year
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
      datadownloads: {},
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
      softwaredownloads: {},
    },
    dsstox: {
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

  comptoxdashboard.usage = {
    pageViews: results[0],
    uniquePageViews: results[1],
    countryMonth: sliceTime(results[2]),
    countryYear: sliceTime(results[3]),
    domainMonth: sliceTime(results[4]),
    domainYear: sliceTime(results[5]),
    stateMonth: sliceTime(results[6]),
    stateYear: sliceTime(results[7])
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
    name: '/',
    count: 'Count',
    uniqueCount: 'Unique Count',
    children: [ {
      id: 1,
      filename: 'foo',
      uniqueCount: 3,
      count: 3,
      children: [ {
        id: 2,
        filename: 'bar',
        uniqueCount: 3,
        count: 2,
        children: [ {
          id: 3,
          filename: 'baz',
          uniqueCount: 3,
          count: 2,
          children: []
        }, {
          id: 4,
          filename: 'foh',
          uniqueCount: 3,
          count: 2,
          children: []
        } ]
      }, {
        id: 5,
        filename: 'bat',
        uniqueCount: 3,
        count: 1,
        children: []
      }
      ]
    } ]
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
  dsstox.filedownloads = {
    name: '/',
    count: 'Count',
    uniqueCount: 'Unique Count',
    children: [ {
      id: 11,
      filename: 'foo',
      uniqueCount: 3,
      count: 3,
      children: [ {
        id: 12,
        filename: 'bar',
        uniqueCount: 3,
        count: 2,
        children: [ {
          id: 13,
          filename: 'baz',
          uniqueCount: 3,
          count: 2,
          children: []
        }, {
          id: 14,
          filename: 'foh',
          uniqueCount: 3,
          count: 2,
          children: []
        } ]
      }, {
        id: 15,
        filename: 'bat',
        uniqueCount: 3,
        count: 1,
        children: []
      }
      ]
    } ]
  }

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
