/**
 * Created by Victor H. Ruelas-Rivera on 4/26/17.
 * US EPA National Center for Computational Toxicology
 */
import { queryGAApi } from '../utils/Client';

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

function normalize(results) {
   let  analytics = {
            comptoxdashboard: {
                usage: {},
                datadownloads: {}
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
                softwaredownloads: {}
            },
            dsstox: {
                datadownloads: {}
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
        countryMonth: results[2],
        countryYear: results[3],
        domainMonth: results[4],
        domainYear: results[5],
        stateMonth: results[6],
        stateYear: results[7]
    };
    actor.usage = {
        pageViews: results[8],
        uniquePageViews: results[9],
        countryMonth: results[10],
        countryYear: results[11],
        domainMonth: results[12],
        domainYear: results[13],
        stateMonth: results[14],
        stateYear: results[15]
    };
    cpcat.usage = {
        pageViews: results[16],
        uniquePageViews: results[17],
        countryMonth: results[18],
        countryYear: results[19],
        domainMonth: results[20],
        domainYear: results[21],
        stateMonth: results[22],
        stateYear: results[23]
    };
    edsp21.usage = {
        pageViews: results[24],
        uniquePageViews: results[25],
        countryMonth: results[26],
        countryYear: results[27],
        domainMonth: results[28],
        domainYear: results[29],
        stateMonth: results[30],
        stateYear: results[31]
    };
    toxcast.usage = {
        pageViews: results[32],
        uniquePageViews: results[33],
        countryMonth: results[34],
        countryYear: results[35],
        domainMonth: results[36],
        domainYear: results[37],
        stateMonth: results[38],
        stateYear: results[39]
    };
    comptoxdashboard.datadownloads = {
        pageViews: results[40],
        uniquePageViews: results[41],
        countryMonth: results[42],
        countryYear: results[43],
        domainMonth: results[44],
        domainYear: results[45],
        stateMonth: results[46],
        stateYear: results[47]
    };
    toxcast.datadownloads = {
        pageViews: results[48],
        uniquePageViews: results[49],
        countryMonth: results[50],
        countryYear: results[51],
        domainMonth: results[52],
        domainYear: results[53],
        stateMonth: results[54],
        stateYear: results[55]
    };
    dsstox.datadownloads = {
        pageViews: results[56],
        uniquePageViews: results[57],
        countryMonth: results[58],
        countryYear: results[59],
        domainMonth: results[60],
        domainYear: results[61],
        stateMonth: results[62],
        stateYear: results[63]
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