/**
 * Created by Victor H. Ruelas-Rivera on 4/26/17.
 * US EPA National Center for Computational Toxicology
 */
import getAppApiIds from './appApiIds'
import normalizeJSON from './normalizeJSON'

export const REQUEST_ANALYTICS = 'REQUEST_ANALYTICS';
function requestAnalytics(app) {
    return {
        type: REQUEST_ANALYTICS,
        app: app
    }
}

export const RECEIVE_ANALYTICS = 'RECEIVE_ANALYTICS';
function receiveAnalytics(json, app) {
  const normalize = normalizeJSON[app];
    return {
        type: RECEIVE_ANALYTICS,
        app: app,
        data: normalize(json),
        receivedAt: Date.now()
    }
}

function fetchAnalytics(app) {
  return (dispatch) => {
    dispatch(requestAnalytics(app));
    Promise.all(getAppApiIds(app)).then(results => {
      dispatch(receiveAnalytics(results, app)).catch(err => {
        console.log('Promise.all error', err)
      })
    })
  }
}

function shouldFetchAnalytics(state, app) {
    const analytics = state.entities.datasets.analytics[app];
    if (analytics.staleData) {
            return true;
    } else if (analytics.isFetching) {
        return false;
    } else {
        return false;
    }
}

export function fetchAnalyticsIfNeeded(app) {
    return (dispatch, getState) => {
        if (shouldFetchAnalytics(getState(), app)) {
            return dispatch(fetchAnalytics(app));
        }
    }
}

