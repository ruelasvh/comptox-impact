/**
 * Created by Victor H. Ruelas-Rivera on 3/27/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { connect } from 'react-redux';
import { Grid, Row, Col, Nav, NavItem, Tab } from 'react-bootstrap';
import MainGADashboard from './MainGADashboard'
import GAChart from './GAChart';
import GASuperimposedChart from './GASuperimposedChart';
import LineChartJS from './LineChartJS';
import moment from 'moment';
import { getAuthorizationIfNeeded } from '../actions';
import '../styles/datatoolsmain.css';

function mapStateToProps(state) {
    const { isAuthGAPI } = state.gapiAuthorization || { isAuthGAPI: false };

    return {
        isAuthGAPI: isAuthGAPI
    }
}

class DataToolsIndex extends React.Component {
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

    authenticateAPI() {
        var _this = this;
        gapi.analytics.ready(function () {
            var CLIENT_ID = '793061702170-5egs8fbsdai74gocs0kflusn9e4b52hr.apps.googleusercontent.com';
            // const ACCESS_TOKEN_FROM_SERVICE_ACCOUNT = 'ya29.Elk3BFYQsCTkWOkhCaibSbjT9IzwzavnExSh38Y7Zjo8oOtlBOn9fKlzB9dMVZdEKFJQJ6Jgln86bWS5AIjjODsvyLdpgce5RD-64gXQIFYe_sP-L1aEnD1SXw';
            const ACCESS_TOKEN_FROM_SERVICE_ACCOUNT = 'ya29.Elk5BDKySCbx-T1fq3YG4IqGlozOFxeG8kPK7a8334ygMeY4ap5om9GxOBBA8hwqU2Fp5Go5AgkVpHyMir8-QteTPDnY5q00G5PfQvzlC9GdvmUOdHiI5ue8Dw';

            gapi.analytics.auth.authorize({
                container: 'embed-api-auth-container',
                clientid: CLIENT_ID,
                userInfoLabel: '',
                approval_prompt: 'force'
            });

            // gapi.analytics.auth.authorize({
            //     'serverAuth': {
            //         'access_token': ACCESS_TOKEN_FROM_SERVICE_ACCOUNT
            //     }
            // });

            gapi.analytics.auth.on('success', function (response) {
                console.log('Google Analytics API Validation Successful.');console.dir(response);
                _this.props.dispatch(getAuthorizationIfNeeded());
            })
        });
    }


    componentDidMount() {
        this.loadGAEmbedAPI();
        this.authenticateAPI();
    }

    render() {
        const comptoxDashboardSubtabInstance = (
            <Tab.Container defaultActiveKey="cd-page-views">
                <Row className="clearfix" >
                    <Col sm={3}>
                        <Nav bsStyle="pills" stacked>
                            <NavItem eventKey="cd-page-views">
                                Page Views
                            </NavItem>
                            <NavItem eventKey="cd-unique-page-views">
                                Unique Page Views
                            </NavItem>
                            <NavItem eventKey="cd-type-users">
                                Types of Users
                            </NavItem>
                            <NavItem eventKey="cd-trend">
                                Trends
                            </NavItem>
                        </Nav>
                    </Col>
                    <Col sm={9}>
                        <Tab.Content animation>
                            <Tab.Pane eventKey="cd-page-views">
                                <h3>Page Views</h3>
                                <GAChart
                                    chartId="comptox-dashboard-pageviews-chart-container"
                                    tableId="ga:117399791"
                                    chartType="LINE"
                                    chartTitle="Page Views By Month"
                                    metrics="ga:pageviews"
                                    dimensions="ga:yearMonth"
                                    filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data"
                                    startDate="365daysAgo"
                                    endDate="yesterday"/>
                            </Tab.Pane>
                            <Tab.Pane eventKey="cd-unique-page-views">
                                <h3>Unique Page Views</h3>
                                <GAChart
                                    chartId="comptox-dashboard-unique-pageviews-chart-container"
                                    tableId="ga:117399791"
                                    chartType="LINE"
                                    chartTitle="Unique Page Views By Month"
                                    metrics="ga:uniquePageviews"
                                    dimensions="ga:yearMonth"
                                    filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data"
                                    startDate="365daysAgo"
                                    endDate="yesterday"/>
                            </Tab.Pane>
                            <Tab.Pane eventKey="cd-type-users">
                                <h3>Type of Users</h3>
                                <p style={{"fontSize": "20px"}}>User Domain (by gov, com, all)</p>
                                <GAChart
                                    chartId="comptox-dashboard-user-domain-gov-chart-container"
                                    tableId="ga:117399791"
                                    chartType="TABLE"
                                    chartTitle="User Domain GOV Addresses"
                                    metrics="ga:users"
                                    dimensions="ga:networkDomain"
                                    filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data;ga:networkDomain=~\.gov$"
                                    startDate="2016-04-23"
                                    endDate="yesterday"/>
                                <GAChart
                                    chartId="comptox-dashboard-user-domain-org-chart-container"
                                    tableId="ga:117399791"
                                    chartType="TABLE"
                                    chartTitle="User Domain ORG Addresses"
                                    metrics="ga:users"
                                    dimensions="ga:networkDomain"
                                    filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data;ga:networkDomain=~\.com$"
                                    startDate="2016-04-23"
                                    endDate="yesterday"/>
                                <GAChart
                                    chartId="comptox-dashboard-user-domain-com-chart-container"
                                    tableId="ga:117399791"
                                    chartType="TABLE"
                                    chartTitle="User Domain COM Addresses"
                                    metrics="ga:users"
                                    dimensions="ga:networkDomain"
                                    filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data"
                                    startDate="2016-04-23"
                                    endDate="yesterday"/>
                            </Tab.Pane>
                            <Tab.Pane eventKey="cd-trend">
                                <h3>Trends</h3>
                                {this.props.isAuthGAPI ?
                                    <LineChartJS
                                        tableId="ga:117399791"
                                        metrics="ga:pageviews"
                                        dimensions="ga:month,ga:nthMonth"
                                        title="Trend Comparing Page Views"/>
                                    : ''}
                                <br/>
                                {this.props.isAuthGAPI ?
                                    <LineChartJS
                                        tableId="ga:117399791"
                                        metrics="ga:uniquePageviews"
                                        dimensions="ga:month,ga:nthMonth"
                                        title="Trend Comparing Unique Page Views"/>
                                    : ''}
                            </Tab.Pane>
                        </Tab.Content>
                    </Col>
                </Row>
            </Tab.Container>
        );

        const actorSubtabInstance = (
            <Tab.Container defaultActiveKey="a-usage-analog-stats">
                <Row className="clearfix" >
                    <Col sm={4}>
                        <Nav bsStyle="pills" stacked>
                            <NavItem eventKey="a-usage-analog-stats">
                                Usage from Analog Stats
                            </NavItem>
                            <NavItem eventKey="a-usage-google-analytics">
                                Usage from Google Analytics
                            </NavItem>
                        </Nav>
                    </Col>
                    <Col sm={8}>
                        <Tab.Content animation>
                            <Tab.Pane eventKey="a-usage-analog-stats">
                                <p>The Aggregated Computational Toxicology Online Resource (ACToR) aggregates data from more than 1,000 public sources on over 500,000 chemicals, and can be used to query a specific chemical and find all publicly available hazard, exposure, and risk assessment data.</p>
                                <br/>
                                <p style={{"text-align": "center", "font-size": "20px"}}>Follow this link to view analog data from ACToR:</p>
                                <p style={{"text-align": "center", "font-size": "20px"}}><a href="https://actor.epa.gov/reports" target="_blank">ACToR Analog Usage Data</a></p>
                            </Tab.Pane>
                            <Tab.Pane eventKey="a-usage-google-analytics">
                                <h3>Usage from Google Analytics</h3>
                            </Tab.Pane>
                        </Tab.Content>
                    </Col>
                </Row>
            </Tab.Container>
        );

        const comptoxResearchSubtabInstance = (
            <Tab.Container defaultActiveKey="cr-data-download-website">
                <Row className="clearfix" >
                    <Col sm={4}>
                        <Nav bsStyle="pills" stacked>
                            <NavItem eventKey="cr-data-download-website">
                                Data Download Website Usage
                            </NavItem>
                            <NavItem eventKey="cr-data-downloads-ftp">
                                Data Downloads from FTP Site
                            </NavItem>
                        </Nav>
                    </Col>
                    <Col sm={8}>
                        <Tab.Content animation>
                            <Tab.Pane eventKey="cr-data-download-website">
                                <h3>Data Download Website Usage</h3>
                                <GAChart
                                    chartId="comptox-pageviews-chart-container"
                                    tableId="ga:69871570"
                                    chartType="LINE"
                                    chartTitle="Page Views By Month"
                                    metrics="ga:pageviews"
                                    dimensions="ga:yearMonth"
                                    filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data"
                                    startDate="365daysAgo"
                                    endDate="yesterday"/>
                                <GAChart
                                    chartId="comptox-unique-pageviews-chart-container"
                                    tableId="ga:69871570"
                                    chartType="LINE"
                                    chartTitle="Unique Page Views By Month"
                                    metrics="ga:uniquePageviews"
                                    dimensions="ga:yearMonth"
                                    filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data"
                                    startDate="365daysAgo"
                                    endDate="yesterday"/>
                                <p style={{"fontSize": "20px"}}>User Domain (by gov, com, all)</p>
                                <GAChart
                                    chartId="comptox-user-domain-gov-chart-container"
                                    tableId="ga:69871570"
                                    chartType="TABLE"
                                    chartTitle="User Domain GOV Addresses"
                                    metrics="ga:users"
                                    dimensions="ga:networkDomain"
                                    filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data;ga:networkDomain=~\.gov$"
                                    startDate="2016-04-23"
                                    endDate="yesterday"/>
                                <GAChart
                                    chartId="comptox-user-domain-org-chart-container"
                                    tableId="ga:69871570"
                                    chartType="TABLE"
                                    chartTitle="User Domain ORG Addresses"
                                    metrics="ga:users"
                                    dimensions="ga:networkDomain"
                                    filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data;ga:networkDomain=~\.com$"
                                    startDate="2016-04-23"
                                    endDate="yesterday"/>
                                <GAChart
                                    chartId="comptox-user-domain-com-chart-container"
                                    tableId="ga:69871570"
                                    chartType="TABLE"
                                    chartTitle="User Domain COM Addresses"
                                    metrics="ga:users"
                                    dimensions="ga:networkDomain"
                                    filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data"
                                    startDate="2016-04-23"
                                    endDate="yesterday"/>
                                <br/>
                                {this.props.isAuthGAPI ?
                                    <LineChartJS
                                        tableId="ga:69871570"
                                        metrics="ga:pageviews"
                                        dimensions="ga:month,ga:nthMonth"
                                        title="Trend Comparing Page Views"/>
                                    : ''}
                                <br/>
                                {this.props.isAuthGAPI ?
                                    <LineChartJS
                                        tableId="ga:69871570"
                                        metrics="ga:uniquePageviews"
                                        dimensions="ga:month,ga:nthMonth"
                                        title="Trend Comparing Unique Page Views"/>
                                    : ''}
                            </Tab.Pane>
                            <Tab.Pane eventKey="cr-data-downloads-ftp">
                                <h3>Data Downloads from FTP Site</h3>
                            </Tab.Pane>
                        </Tab.Content>
                    </Col>
                </Row>
            </Tab.Container>
        );

        const dataDomainTabInstance = (
            <Tab.Container defaultActiveKey="first">
                <Row className="clearfix" >
                    <Col sm={12}>
                        <Nav bsStyle="tabs" bsClass="nav-short nav">
                            <NavItem eventKey="first">
                                CompTox Dashboard
                            </NavItem>
                            <NavItem eventKey="second">
                                ACToR
                            </NavItem>
                            <NavItem eventKey="third">
                                CompTox Data
                            </NavItem>
                        </Nav>
                    </Col>
                    <Col sm={12}>
                        <Tab.Content animation>
                            <Tab.Pane eventKey="first">
                                <br/>
                                <h2>CompTox Dashboard Usage</h2>
                                <br/>
                                {comptoxDashboardSubtabInstance}
                            </Tab.Pane>
                            <Tab.Pane eventKey="second">
                                <br/>
                                <h2>ACToR Usage</h2>
                                <br/>
                                {actorSubtabInstance}
                            </Tab.Pane>
                            <Tab.Pane eventKey="third">
                                <br/>
                                <h2>CompTox Data Usage</h2>
                                <br/>
                                {comptoxResearchSubtabInstance}
                            </Tab.Pane>
                        </Tab.Content>
                    </Col>
                </Row>
            </Tab.Container>
        );

        return (
            <div className="data-tools-container">
                <Grid>
                    <div id="embed-api-auth-container"></div>

                    <h1>CompTox Research Data and Tools Usage</h1>
                    <br/><br/>
                    {dataDomainTabInstance}
                    <br/><br/><br/>
                </Grid>
            </div>
        )
    }
}

export default connect(mapStateToProps)(DataToolsIndex);
