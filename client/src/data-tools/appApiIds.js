/**
 * Created by vruelasr on 8/24/17.
 */
import {
  queryGAApi, ftpTreeMetrics, ftpMonthTop10, ftpYearTop10, ftpMetricsInfoCountCountry,
  ftpMetricsInfoCountState, ftpMetricsInfoDomain, ftpMetricsAppVisitsCount
} from '../utils/Client';

const appApi_ids = {
  comptoxdashboard: {
    ga: [
    /* CompTox Chemistry Dashboard */
    'ICA5JEKDA', // Page Views
    'IDa44YKDA', // Unique Page Views
    'IDA-pMKDA', // Country Month
    'MCoppsJDA', // Country Year
    // 'ID8qZ8KDA'), // Domain Month
    'IDBgIoKDA', // Organization Month
    'ICZ0oUKDA', // Domain Year
    'ID4-4IKDA', // State Month
    'MCoppsKDA', // State Year
    'IC5x5UKDA', // New vs Returning users for 2016
    'MCYkZIKDA', // New vs Returning users for 2017
    'IDdjYwKDA', // CompTox Active Users
    ],
    ftpTreeMetrics: ['comptox'],
    ftpMonthTop10: ['comptox'],
    ftpYearTop10: ['comptox'],
    ftpMetricsInfoCountState: ['comptox'],
    ftpMetricsInfoCountCountry: ['comptox'],
    ftpMetricsInfoDomain: ['comptox'],
    ftpMetricsAppVisitsCount: ['comptox']
  },
  actor: {
    ga: [
    /* ACToR */
    'IDruI8KDA', // Page Views
    'MCo_IoJDA', // Unique Page Views
    'ID8vYEKDA', // Country Month
    'ICv9YQKDA', // Country Year
    'IC-8YsKDA', // Domain Month
    'ID8qZ8JDA', // Domain Year
    'IC63J8JDA', // State Month
    'ICEtIoKDA', // State Year
    ]
  },
  cpcat: {
    ga: [
    /* CPCat */
    'IDrop4KDA', // Page Views
    'IDZ8JILDA', // Unique Page Views
    'IDAnIILDA', // Country Month
    'MCosYYKDA', // Country Year
    'ICEypsKDA', // Domain Month
    'ICE3oYKDA', // Domain Year
    'ID89o4JDA', // State Month
    'ICZ54MJDA', // State Year
    ]
  },
  edsp21: {
    ga: [
    /* EDSP21 */
    'MCo_IoLDA', // Page Views
    'IDruI8JDA', // Unique Page Views
    'IDrop4JDA', // Country Month
    'IDZ8NIIDA', // Country Year
    'IDAnMIIDA', // Domain Month
    'MCosYYJDA', // Domain Year
    'ID8vYEJDA', // State Month
    'ICv9YQJDA', // State Year
    ]
  },
  toxcast: {
    ga: [
    /* ToxCast */
    'IDA-pMJDA', // Page Views
    'MCoppsLDA', // Unique Page Views
    'IDZrIsJDA', // Country Month
    'ICEtIoJDA', // Country Year
    'IC63J8LDA', // Domain Month
    'IDZ8NIKDA', // Domain Year
    'IDAnMIKDA', // State Month
    'MCosYYLDA', // State Year
    /* ToxCast Download Drupal */
    'ICv4dkIDA', // Page Views
    'ICdwJoJDA', // Unique Page Views
    'ICdipYKDA', // Country Month
    'MCo6JMLDA', // Country Year
    'ICZ58MIDA', // Domain Month
    'ICEtIoLDA', // Domain Year
    'IC63N8IDA', // State Month
    'ID8qZ8LDA', // State Year
    ],
    ftpTreeMetrics: ['toxcast'],
    ftpMonthTop10: ['toxcast'],
    ftpYearTop10: ['toxcast'],
    ftpMetricsInfoCountState: ['toxcast'],
    ftpMetricsInfoCountCountry: ['toxcast'],
    ftpMetricsInfoDomain: ['toxcast'],
    ftpMetricsAppVisitsCount: ['toxcast']
  },
  dsstox: {
    ga: [
    /* DSSTox Download Drupal */
    'IC6qI4JDA', // Page Views
    'ICEoJMJDA', // Unique Page Views
    'ICdwJoLDA', // Country Month
    'ICdipYJDA', // Country Year
    'MCo6NMIDA', // Domain Month
    'ICZ58MKDA', // Domain Year
    'ICEtMoIDA', // State Month
    'IC63N8KDA', // State Year
    ],
    ftpTreeMetrics: ['dsstox'],
    ftpMonthTop10: ['dsstox'],
    ftpYearTop10: ['dsstox'],
    ftpMetricsInfoCountState: ['dsstox'],
    ftpMetricsInfoCountCountry: ['dsstox'],
    ftpMetricsInfoDomain: ['dsstox'],
    ftpMetricsAppVisitsCount: ['dsstox']
  },
  comptox: {
    ga: [
    /* CompTox Download Drupal */
    'MCo6JMJDA', // Page Views
    'ICZ54MLDA', // Unique Page Views
    'IC-7ZoKDA', // Country Month
    'ICv4ZkLDA', // Country Year
    'ICdlIcKDA', // Domain Month
    'IC-8YsJDA', // Domain Year
    'ICv9YQLDA', // State Month
    'ID8vYELDA', // State Year
    ],
    ftpTreeMetrics: ['comptoxdata'],
    ftpMonthTop10: ['comptoxdata'],
    ftpYearTop10: ['comptoxdata'],
    ftpMetricsInfoCountState: ['comptoxdata'],
    ftpMetricsInfoCountCountry: ['comptoxdata'],
    ftpMetricsInfoDomain: ['comptoxdata'],
    ftpMetricsAppVisitsCount: ['comptoxdata']
  }
}

export default function appApiIds(app) {
  const appIds = appApi_ids[app]
  let calls = appIds.ga.map(id => queryGAApi(id))
  if (appIds.hasOwnProperty('ftpTreeMetrics')) {
    calls.push(...appIds.ftpTreeMetrics.map(id => ftpTreeMetrics(id)))
  }
  if (appIds.hasOwnProperty('ftpMonthTop10')) {
    calls.push(...appIds.ftpMonthTop10.map(id => ftpMonthTop10(id)))
  }
  if (appIds.hasOwnProperty('ftpYearTop10')) {
    calls.push(...appIds.ftpYearTop10.map(id => ftpYearTop10(id)))
  }
  if (appIds.hasOwnProperty('ftpMetricsInfoCountState')) {
    calls.push(...appIds.ftpMetricsInfoCountState.map(id => ftpMetricsInfoCountState(id)))
  }
  if (appIds.hasOwnProperty('ftpMetricsInfoCountCountry')) {
    calls.push(...appIds.ftpMetricsInfoCountCountry.map(id => ftpMetricsInfoCountCountry(id)))
  }
  if (appIds.hasOwnProperty('ftpMetricsInfoDomain')) {
    calls.push(...appIds.ftpMetricsInfoDomain.map(id => ftpMetricsInfoDomain(id)))
  }
  if (appIds.hasOwnProperty('ftpMetricsAppVisitsCount')) {
    calls.push(...appIds.ftpMetricsAppVisitsCount.map(id => ftpMetricsAppVisitsCount(id)))
  }
  
  return calls
}