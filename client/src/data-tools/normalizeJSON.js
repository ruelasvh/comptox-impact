/**
 * Created by vruelasr on 8/24/17.
 */
import model from './model'
import moment from 'moment'

let analytics = model.analytics

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

const normalizeJSON = {
  comptoxdashboard: (results) => {
    let comptoxdashboard = analytics.comptoxdashboard
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
          data: results[8],
          timeperiod: '2016'
        },
        {
          data: results[9],
          timeperiod: '2017'
        }
      ],
      activeUsers: results[10]
    };
    comptoxdashboard.filedownloads = {
      tree: {
        name: '/',
        count: 'Count',
        uniqueCount: 'Unique Count',
        children: [ results[11] ]
      },
      month: {
        data: results[12].data,
        timeperiod: moment(results[12].month + '01').format('MMM YYYY')
      },
      year: {
        data: results[13].data,
        timeperiod: results[13].year
      },
      stateYear: {
        data: results[14],
        timeperiod: 'All'
      },
      countryYear: {
        data: results[15],
        timeperiod: 'All'
      },
      domain: {
        data: results[16].sort((a,b) => b.count - a.count),
        timeperiod: 'All'
      },
      visits: [{
        data: {
          rows: [
            ["New Users", results[17]["New Users"]],
            ["Returning Users", results[17]["Returning Users"]]
          ]
        },
        timeperiod: 'All'
      }]
    };
    return comptoxdashboard
  },
  actor: (results) => {
    let actor = analytics.actor
    actor.usage = {
      pageViews: results[0],
      uniquePageViews: results[1],
      countryMonth: sliceTime(results[2]),
      countryYear: sliceTime(results[3]),
      domainMonth: sliceTime(results[4]),
      domainYear: sliceTime(results[5]),
      stateMonth: sliceTime(results[6]),
      stateYear: sliceTime(results[7])
    };
    return actor
  },
  cpcat: (results) => {
    let cpcat = analytics.cpcat;
    cpcat.usage = {
      pageViews: results[0],
      uniquePageViews: results[1],
      countryMonth: sliceTime(results[2]),
      countryYear: sliceTime(results[3]),
      domainMonth: sliceTime(results[4]),
      domainYear: sliceTime(results[5]),
      stateMonth: sliceTime(results[6]),
      stateYear: sliceTime(results[7])
    };
    return cpcat
  },
  edsp21: (results) => {
    let edsp21 = analytics.edsp21
    edsp21.usage = {
      pageViews: results[0],
      uniquePageViews: results[1],
      countryMonth: sliceTime(results[2]),
      countryYear: sliceTime(results[3]),
      domainMonth: sliceTime(results[4]),
      domainYear: sliceTime(results[5]),
      stateMonth: sliceTime(results[6]),
      stateYear: sliceTime(results[7])
    };
    return edsp21
  },
  toxcast: (results) => {
    let toxcast = analytics.toxcast
    toxcast.usage = {
      pageViews: results[0],
      uniquePageViews: results[1],
      countryMonth: sliceTime(results[2]),
      countryYear: sliceTime(results[3]),
      domainMonth: sliceTime(results[4]),
      domainYear: sliceTime(results[5]),
      stateMonth: sliceTime(results[6]),
      stateYear: sliceTime(results[7])
    };
    toxcast.datadownloads = {
      pageViews: results[8],
      uniquePageViews: results[9],
      countryMonth: sliceTime(results[10]),
      countryYear: sliceTime(results[11]),
      domainMonth: sliceTime(results[12]),
      domainYear: sliceTime(results[13]),
      stateMonth: sliceTime(results[14]),
      stateYear: sliceTime(results[15]),
    };
    toxcast.filedownloads = {
      tree: {
        name: '/',
        count: 'Count',
        uniqueCount: 'Unique Count',
        children: [ results[16] ]
      },
      month: {
        data: results[17].data,
        timeperiod: moment(results[17].month + '01').format('MMM YYYY')
      },
      year: {
        data: results[18].data,
        timeperiod: results[18].year
      },
      stateYear: {
        data: results[19],
        timeperiod: 'All'
      },
      countryYear: {
        data: results[20],
        timeperiod: 'All'
      },
      domain: {
        data: results[21].sort((a,b) => b.count - a.count),
        timeperiod: 'All'
      },
      visits: [{
        data: {
          rows: [
            ["New Users", results[22]["New Users"]],
            ["Returning Users", results[22]["Returning Users"]]
          ]
        },
        timeperiod: 'All'
      }]
    };
    return toxcast
  },
  dsstox: (results) => {
    let dsstox = analytics.dsstox
    dsstox.datadownloads = {
      pageViews: results[0],
      uniquePageViews: results[1],
      countryMonth: sliceTime(results[2]),
      countryYear: sliceTime(results[3]),
      domainMonth: sliceTime(results[4]),
      domainYear: sliceTime(results[5]),
      stateMonth: sliceTime(results[6]),
      stateYear: sliceTime(results[7]),
    };
    dsstox.filedownloads = {
      tree: {
        name: '/',
        count: 'Count',
        uniqueCount: 'Unique Count',
        children: [ results[8] ]
      },
      month: {
        data: results[9].data,
        timeperiod: moment(results[9].month + '01').format('MMM YYYY')
      },
      year: {
        data: results[10].data,
        timeperiod: results[10].year
      },
      stateYear: {
        data: results[11],
        timeperiod: 'All'
      },
      countryYear: {
        data: results[12],
        timeperiod: 'All'
      },
      domain: {
        data: results[13].sort((a,b) => b.count - a.count),
        timeperiod: 'All'
      },
      visits: [{
        data: {
          rows: [
            ["New Users", results[14]["New Users"]],
            ["Returning Users", results[14]["Returning Users"]]
          ]
        },
        timeperiod: 'All'
      }]
    };
    return dsstox
  },
  comptox: (results) => {
    let comptox = analytics.comptox
    comptox.datadownloads = {
      pageViews: results[0],
      uniquePageViews: results[1],
      countryMonth: sliceTime(results[2]),
      countryYear: sliceTime(results[3]),
      domainMonth: sliceTime(results[4]),
      domainYear: sliceTime(results[5]),
      stateMonth: sliceTime(results[6]),
      stateYear: sliceTime(results[7]),
    };
    comptox.filedownloads = {
      tree: {
        name: '/',
        count: 'Count',
        uniqueCount: 'Unique Count',
        children: results[8]
      },
      month: {
        data: results[9].data,
        timeperiod: moment(results[9].month + '01').format('MMM YYYY')
      },
      year: {
        data: results[10].data,
        timeperiod: results[10].year
      },
      stateYear: {
        data: results[11],
        timeperiod: 'All'
      },
      countryYear: {
        data: results[12],
        timeperiod: 'All'
      },
      domain: {
        data: results[13].sort((a,b) => b.count - a.count),
        timeperiod: 'All'
      },
      visits: [{
        data: {
          rows: [
            ["New Users", results[14]["New Users"]],
            ["Returning Users", results[14]["Returning Users"]]
          ]
        },
        timeperiod: 'All'
      }]
    };
    return comptox
  }
}



export default normalizeJSON