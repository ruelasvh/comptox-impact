/**
 * Created by Victor H. Ruelas-Rivera on 3/28/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react'
import { Grid, Row, Col } from 'react-bootstrap'
import '../styles/maingadashboard.css'

class MainGADashboard extends React.Component {
    constructor(props) {
        super(props);
    }

    loadGAEmbedAPI() {
        (function(w,d,s,g,js,fs){
            g=w.gapi||(w.gapi={});g.analytics={q:[],ready:function(f){this.q.push(f);}};
            js=d.createElement(s);fs=d.getElementsByTagName(s)[0];
            js.src='https://apis.google.com/js/platform.js';
            fs.parentNode.insertBefore(js,fs);js.onload=function(){g.load('analytics');};
        }(window,document,'script'));
    }

    appendDashboard() {
        gapi.analytics.ready(function() {

            /**
             * Authorize the user immediately if the user has already granted access.
             * If no access has been created, render an authorize button inside the
             * element with the ID "embed-api-auth-container".
             */
            var CLIENT_ID = '793061702170-5egs8fbsdai74gocs0kflusn9e4b52hr.apps.googleusercontent.com';

            gapi.analytics.auth.authorize({
                container: 'embed-api-auth-container',
                clientid: CLIENT_ID,
                userInfoLabel: ''
            });


            // Chart for displaying page views
            var pageviewsChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:pageviews',
                    dimensions: 'ga:yearMonth',
                    filters: 'ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data',
                    'start-date': '2016-01-01',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'comptox-pageviews-chart-container',
                    type: 'LINE',
                    options: {
                        width: '100%',
                        title: 'Page Views By Month And Year'
                    }
                }
            });

            pageviewsChart.on('error', function (e) {
                console.log('pageviewsChart error', e);
            });

            // Chart for displaying unique pages views
            var uniquePageviewsChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:uniquePageviews',
                    dimensions: 'ga:yearMonth',
                    filters: 'ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data',
                    'start-date': '2016-01-01',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'comptox-unique-pageviews-chart-container',
                    type: 'LINE',
                    options: {
                        width: '100%',
                        title: 'Page Views By Month And Year'
                    }
                }
            });

            uniquePageviewsChart.on('error', function (e) {
                console.log('uniquePageviews error', e);
            });

            // Chart for displaying mobile vs desktop
            var mobileDesktopChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:users',
                    dimensions: 'ga:deviceCategory',
                    filters: 'ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data',
                    'start-date': '2016-01-01',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'comptox-mobile-desktop-chart-container',
                    type: 'PIE',
                    options: {
                        width: '100%',
                        title: 'Device Category'
                    }
                }
            });

            mobileDesktopChart.on('error', function (e) {
                console.log('mobileDesktopChart error', e);
            });

            // Chart for displaying referral sites
            var referralSiteChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:users,ga:newUsers',
                    dimensions: 'ga:fullReferrer',
                    filters: 'ga:fullReferrer!@direct;ga:fullReferrer!@anal;ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data',
                    'start-date': '2016-01-01',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'comptox-referral-site-chart-container',
                    type: 'TABLE',
                    options: {
                        width: '100%',
                        title: 'Referral Site'
                    }
                }
            });

            referralSiteChart.on('error', function (e) {
                console.log('referralSiteChart error', e);
            });

            // Chart for displaying specific events
            var eventsChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:totalEvents',
                    dimensions: 'ga:eventLabel',
                    filters: 'ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data',
                    'start-date': '2016-01-01',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'comptox-events-chart-container',
                    type: 'PIE',
                    options: {
                        width: '100%',
                        title: 'Total Events By Event Label'
                    }
                }
            });

            eventsChart.on('error', function (e) {
                console.log('eventsChart error', e);
            });

            // Chart for displaying average time on page
            var avgTimeOnPageChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:avgTimeOnPage',
                    dimensions: 'ga:pagePath',
                    filters: 'ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data',
                    'start-date': '30daysAgo',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'comptox-avg-time-on-page-chart-container',
                    type: 'TABLE',
                    options: {
                        width: '100%',
                        title: 'Average Time On Page'
                    }
                }
            });

            avgTimeOnPageChart.on('error', function (e) {
                console.log('avgTimeOnPageChart error', e);
            });

            /**
             * ToxCast Data
             **/
                // Chart for displaying page views
            var toxcastPageviewsChart = new gapi.analytics.googleCharts.DataChart({
                    reportType: 'ga',
                    query: {
                        ids: 'ga:69871570',
                        metrics: 'ga:pageviews',
                        dimensions: 'ga:yearMonth',
                        filters: 'ga:pagePath==epa.gov/chemical-research/toxicity-forecaster-toxcasttm-data',
                        'start-date': '2016-01-01',
                        'end-date': 'yesterday'
                    },
                    chart: {
                        container: 'toxcast-pageviews-chart-container',
                        type: 'LINE',
                        options: {
                            width: '100%',
                            title: 'Page Views By Month And Year'
                        }
                    }
                });

            toxcastPageviewsChart.on('error', function (e) {
                console.log('toxcastPageviewsChart error', e);
            });

            // Chart for displaying unique pages views
            var toxcastUniquePageviewsChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:uniquePageviews',
                    dimensions: 'ga:yearMonth',
                    filters: 'ga:pagePath==epa.gov/chemical-research/toxicity-forecaster-toxcasttm-data',
                    'start-date': '2016-01-01',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'toxcast-unique-pageviews-chart-container',
                    type: 'LINE',
                    options: {
                        width: '100%',
                        title: 'Page Views By Month And Year'
                    }
                }
            });

            toxcastUniquePageviewsChart.on('error', function (e) {
                console.log('toxcastUniquePageviews error', e);
            });

            // Chart for displaying mobile vs desktop
            var toxcastMobileDesktopChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:users',
                    dimensions: 'ga:deviceCategory',
                    filters: 'ga:pagePath==epa.gov/chemical-research/toxicity-forecaster-toxcasttm-data',
                    'start-date': '2016-01-01',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'toxcast-mobile-desktop-chart-container',
                    type: 'PIE',
                    options: {
                        width: '100%',
                        title: 'Device Category'
                    }
                }
            });

            toxcastMobileDesktopChart.on('error', function (e) {
                console.log('toxcastMobileDesktopChart error', e);
            });

            // Chart for displaying referral sites
            var toxcastReferralSiteChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:users,ga:newUsers',
                    dimensions: 'ga:fullReferrer',
                    filters: 'ga:fullReferrer!@direct;ga:fullReferrer!@anal;ga:pagePath==epa.gov/chemical-research/toxicity-forecaster-toxcasttm-data',
                    'start-date': '2016-01-01',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'toxcast-referral-site-chart-container',
                    type: 'TABLE',
                    options: {
                        width: '100%',
                        title: 'Referral Site'
                    }
                }
            });

            toxcastReferralSiteChart.on('error', function (e) {
                console.log('toxcastReferralSiteChart error', e);
            });

            // Chart for displaying specific events
            var toxcastEventsChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:totalEvents',
                    dimensions: 'ga:eventLabel',
                    filters: 'ga:pagePath==epa.gov/chemical-research/toxicity-forecaster-toxcasttm-data',
                    'start-date': '2016-01-01',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'toxcast-events-chart-container',
                    type: 'TABLE',
                    options: {
                        width: '100%',
                        title: 'Total Events By Event Label'
                    }
                }
            });

            toxcastEventsChart.on('error', function (e) {
                console.log('toxcastEventsChart error', e);
            });

            // Chart for displaying average time on page
            var toxcastAvgTimeOnPageChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:avgTimeOnPage',
                    dimensions: 'ga:pagePath',
                    filters: 'ga:pagePath==epa.gov/chemical-research/toxicity-forecaster-toxcasttm-data',
                    'start-date': '30daysAgo',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'toxcast-avg-time-on-page-chart-container',
                    type: 'TABLE',
                    options: {
                        width: '100%',
                        title: 'Average Time On Page (seconds)'
                    }
                }
            });

            toxcastAvgTimeOnPageChart.on('error', function (e) {
                console.log('toxcastAvgTimeOnPageChart error', e);
            });

            /**
             * DSSTox Data
             */
                // Chart for displaying page views
            var dsstoxPageviewsChart = new gapi.analytics.googleCharts.DataChart({
                    reportType: 'ga',
                    query: {
                        ids: 'ga:69871570',
                        metrics: 'ga:pageviews',
                        dimensions: 'ga:yearMonth',
                        filters: 'ga:pagePath==epa.gov/chemical-research/distributed-structure-searchable-toxicity-dsstox-database',
                        'start-date': '2016-01-01',
                        'end-date': 'yesterday'
                    },
                    chart: {
                        container: 'dsstox-pageviews-chart-container',
                        type: 'LINE',
                        options: {
                            width: '100%',
                            title: 'Page Views By Month And Year'
                        }
                    }
                });

            dsstoxPageviewsChart.on('error', function (e) {
                console.log('dsstoxPageviewsChart error', e);
            });

            // Chart for displaying unique pages views
            var dsstoxUniquePageviewsChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:uniquePageviews',
                    dimensions: 'ga:yearMonth',
                    filters: 'ga:pagePath==epa.gov/chemical-research/distributed-structure-searchable-toxicity-dsstox-database',
                    'start-date': '2016-01-01',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'dsstox-unique-pageviews-chart-container',
                    type: 'LINE',
                    options: {
                        width: '100%',
                        title: 'Page Views By Month And Year'
                    }
                }
            });

            dsstoxUniquePageviewsChart.on('error', function (e) {
                console.log('dsstoxUniquePageviews error', e);
            });

            // Chart for displaying mobile vs desktop
            var dsstoxMobileDesktopChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:users',
                    dimensions: 'ga:deviceCategory',
                    filters: 'ga:pagePath==epa.gov/chemical-research/distributed-structure-searchable-toxicity-dsstox-database',
                    'start-date': '2016-01-01',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'dsstox-mobile-desktop-chart-container',
                    type: 'PIE',
                    options: {
                        width: '100%',
                        title: 'Device Category'
                    }
                }
            });

            dsstoxMobileDesktopChart.on('error', function (e) {
                console.log('dsstoxMobileDesktopChart error', e);
            });

            // Chart for displaying referral sites
            var dsstoxReferralSiteChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:users,ga:newUsers',
                    dimensions: 'ga:fullReferrer',
                    filters: 'ga:fullReferrer!@direct;ga:fullReferrer!@anal;ga:pagePath==epa.gov/chemical-research/distributed-structure-searchable-toxicity-dsstox-database',
                    'start-date': '2016-01-01',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'dsstox-referral-site-chart-container',
                    type: 'TABLE',
                    options: {
                        width: '100%',
                        title: 'Referral Site'
                    }
                }
            });

            dsstoxReferralSiteChart.on('error', function (e) {
                console.log('dsstoxReferralSiteChart error', e);
            });

            // Chart for displaying specific events
            var dsstoxEventsChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:totalEvents',
                    dimensions: 'ga:eventLabel',
                    filters: 'ga:pagePath==epa.gov/chemical-research/distributed-structure-searchable-toxicity-dsstox-database',
                    'start-date': '2016-01-01',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'dsstox-events-chart-container',
                    type: 'TABLE',
                    options: {
                        width: '100%',
                        title: 'Total Events By Event Label'
                    }
                }
            });

            dsstoxEventsChart.on('error', function (e) {
                console.log('dsstoxEventsChart error', e);
            });

            // Chart for displaying average time on page
            var dsstoxAvgTimeOnPageChart = new gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:avgTimeOnPage',
                    dimensions: 'ga:pagePath',
                    filters: 'ga:pagePath==epa.gov/chemical-research/distributed-structure-searchable-toxicity-dsstox-database',
                    'start-date': '30daysAgo',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'dsstox-avg-time-on-page-chart-container',
                    type: 'TABLE',
                    options: {
                        width: '100%',
                        title: 'Average Time On Page (seconds)'
                    }
                }
            });

            dsstoxAvgTimeOnPageChart.on('error', function (e) {
                console.log('dsstoxAvgTimeOnPageChart error', e);
            });
            // Load all charts
            gapi.analytics.auth.on('success', function (response) {
                // Hide the auth-button
                document.querySelector("#embed-api-auth-container").style.display='none';

                pageviewsChart.execute();
                uniquePageviewsChart.execute();
                mobileDesktopChart.execute();
                referralSiteChart.execute();
                eventsChart.execute();
                avgTimeOnPageChart.execute();
                toxcastPageviewsChart.execute();
                toxcastUniquePageviewsChart.execute();
                toxcastMobileDesktopChart.execute();
                toxcastReferralSiteChart.execute();
                toxcastEventsChart.execute();
                toxcastAvgTimeOnPageChart.execute();
                dsstoxPageviewsChart.execute();
                dsstoxUniquePageviewsChart.execute();
                dsstoxMobileDesktopChart.execute();
                dsstoxReferralSiteChart.execute();
                dsstoxEventsChart.execute();
                dsstoxAvgTimeOnPageChart.execute();
            });

        });
    }

    componentDidMount() {
        this.loadGAEmbedAPI();
        this.appendDashboard();
    }

    render() {
        return (
            <div id="charts-container">
                <Grid>
                    <Row>
                        <h2>CompTox Data</h2>
                        <div id="embed-api-auth-container"></div>
                        <div id="comptox-pageviews-chart-container"></div>
                        <div id="comptox-unique-pageviews-chart-container"></div>
                        <div id="comptox-mobile-desktop-chart-container"></div>
                        <div id="comptox-referral-site-chart-container"></div>
                        <div id="comptox-events-chart-container"></div>
                        <div id="comptox-avg-time-on-page-chart-container"></div>
                        <br/>
                        <h2>ToxCast Data</h2>
                        <br/>
                        <div id="toxcast-pageviews-chart-container"></div>
                        <div id="toxcast-unique-pageviews-chart-container"></div>
                        <div id="toxcast-mobile-desktop-chart-container"></div>
                        <div id="toxcast-referral-site-chart-container"></div>
                        <div id="toxcast-most-popular-links-chart-container"></div>
                        <div id="toxcast-events-chart-container"></div>
                        <div id="toxcast-avg-time-on-page-chart-container"></div>
                        <h2>DSSTox Data</h2>
                        <div id="dsstox-pageviews-chart-container"></div>
                        <div id="dsstox-unique-pageviews-chart-container"></div>
                        <div id="dsstox-mobile-desktop-chart-container"></div>
                        <div id="dsstox-referral-site-chart-container"></div>
                        <div id="dsstox-most-popular-links-chart-container"></div>
                        <div id="dsstox-events-chart-container"></div>
                        <div id="dsstox-avg-time-on-page-chart-container"></div>
                    </Row>
                </Grid>
            </div>
        )
    }
}

export default MainGADashboard;