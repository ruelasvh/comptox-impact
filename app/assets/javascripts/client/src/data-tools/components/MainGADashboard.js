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
                    container: 'pageviews-chart-container',
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
                    container: 'unique-pageviews-chart-container',
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
                    container: 'mobile-desktop-chart-container',
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
                    'start-date': '30daysAgo',
                    'end-date': 'yesterday'
                },
                chart: {
                    container: 'referral-site-chart-container',
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
                    container: 'events-chart-container',
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
                    container: 'avg-time-on-page-chart-container',
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
                        <div id="pageviews-chart-container"></div>
                        <div id="unique-pageviews-chart-container"></div>
                        <div id="mobile-desktop-chart-container"></div>
                        <div id="referral-site-chart-container"></div>
                        <div id="events-chart-container"></div>
                        <div id="avg-time-on-page-chart-container"></div>
                    </Row>
                </Grid>
            </div>
        )
    }
}

export default MainGADashboard;