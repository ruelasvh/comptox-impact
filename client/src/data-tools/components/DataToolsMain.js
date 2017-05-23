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
import LineChart from './LineChart';
import DoughnutChart from './DoughnutChart';
import moment from 'moment';
import { queryGAApi } from '../../utils/Client';
import '../styles/datatoolsmain.css';


class DataToolsIndex extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            datasets: {
                analytics: {
                    comptoxDashboard: {
                        pageViews: {},
                        uniquePageViews: {},
                        domainTypes: {}
                    }
                }
            },
            isFetching: true
        };
        // Bindings
        this.fetchData = this.fetchData.bind(this);
    }

    fetchData() {
      let _this = this;

      Promise.all([
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICA5JEKDA'),
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDa44YKDA'),
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZ0oUKDA')
      ]).then(function (results) {
            let datasets = {
                analytics: {
                    comptoxDashboard: {
                        pageViews: results[0],
                        uniquePageViews: results[1],
                        domainTypes: results[2]
                    }
                }
            };

            _this.setState({ datasets: datasets, isFetching: false });
        });
    }

    query(params) {
        return fetch(params).then(function (response) {
            return response.json();
        }).then(function (json) {
            return json;
        });
    }

    componentDidMount() {
        this.fetchData();
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
                                {!this.state.isFetching ?
                                    <LineChart data={this.state.datasets.analytics.comptoxDashboard.pageViews}
                                               label="Page Views By Month"/> : ' '
                                }
                            </Tab.Pane>
                            <Tab.Pane eventKey="cd-unique-page-views">
                                {!this.state.isFetching ?
                                    <LineChart data={this.state.datasets.analytics.comptoxDashboard.uniquePageViews}
                                               label="Unique Page Views By Month"/> : ' '
                                }
                            </Tab.Pane>
                            <Tab.Pane eventKey="cd-type-users">
                                {!this.state.isFetching ?
                                    <DoughnutChart data={this.state.datasets.analytics.comptoxDashboard.domainTypes}
                                                    label="Type Of Users By Domain"/> : ' '
                                }
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
                                <p style={{"textAlign": "center", "fontSize": "20px"}}>Follow this link to view analog data from ACToR:</p>
                                <p style={{"textAlign": "center", "fontSize": "20px"}}><a href="https://actor.epa.gov/reports" target="_blank">ACToR Analog Usage Data</a></p>
                            </Tab.Pane>
                            <Tab.Pane eventKey="a-usage-google-analytics">
                                <h3>Usage from Google Analytics</h3>
                            </Tab.Pane>
                        </Tab.Content>
                    </Col>
                </Row>
            </Tab.Container>
        );

        const comptoxDataSubtabInstance = (
            <Tab.Container defaultActiveKey="cdata-download-website">
                <Row className="clearfix" >
                    <Col sm={4}>
                        <Nav bsStyle="pills" stacked>
                            <NavItem eventKey="cdata-download-website">
                                Data Download Website Usage
                            </NavItem>
                            <NavItem eventKey="cr-data-downloads-ftp">
                                Data Downloads from FTP Site
                            </NavItem>
                        </Nav>
                    </Col>
                    <Col sm={8}>
                        <Tab.Content animation>
                            <Tab.Pane eventKey="cdata-download-website">
                                <h3>Data Download Website Usage</h3>
                                {/*<GAChart*/}
                                    {/*chartId="comptox-pageviews-chart-container"*/}
                                    {/*tableId="ga:69871570"*/}
                                    {/*chartType="LINE"*/}
                                    {/*chartTitle="Page Views By Month"*/}
                                    {/*metrics="ga:pageviews"*/}
                                    {/*dimensions="ga:yearMonth"*/}
                                    {/*filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data"*/}
                                    {/*startDate="365daysAgo"*/}
                                    {/*endDate="yesterday"/>*/}
                                {/*<GAChart*/}
                                    {/*chartId="comptox-unique-pageviews-chart-container"*/}
                                    {/*tableId="ga:69871570"*/}
                                    {/*chartType="LINE"*/}
                                    {/*chartTitle="Unique Page Views By Month"*/}
                                    {/*metrics="ga:uniquePageviews"*/}
                                    {/*dimensions="ga:yearMonth"*/}
                                    {/*filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data"*/}
                                    {/*startDate="365daysAgo"*/}
                                    {/*endDate="yesterday"/>*/}
                                {/*<p style={{"fontSize": "20px"}}>User Domain (by gov, com, all)</p>*/}
                                {/*<GAChart*/}
                                    {/*chartId="comptox-user-domain-gov-chart-container"*/}
                                    {/*tableId="ga:69871570"*/}
                                    {/*chartType="TABLE"*/}
                                    {/*chartTitle="User Domain GOV Addresses"*/}
                                    {/*metrics="ga:users"*/}
                                    {/*dimensions="ga:networkDomain"*/}
                                    {/*filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data;ga:networkDomain=~\.gov$"*/}
                                    {/*startDate="2016-04-23"*/}
                                    {/*endDate="yesterday"/>*/}
                                {/*<GAChart*/}
                                    {/*chartId="comptox-user-domain-org-chart-container"*/}
                                    {/*tableId="ga:69871570"*/}
                                    {/*chartType="TABLE"*/}
                                    {/*chartTitle="User Domain ORG Addresses"*/}
                                    {/*metrics="ga:users"*/}
                                    {/*dimensions="ga:networkDomain"*/}
                                    {/*filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data;ga:networkDomain=~\.com$"*/}
                                    {/*startDate="2016-04-23"*/}
                                    {/*endDate="yesterday"/>*/}
                                {/*<GAChart*/}
                                    {/*chartId="comptox-user-domain-com-chart-container"*/}
                                    {/*tableId="ga:69871570"*/}
                                    {/*chartType="TABLE"*/}
                                    {/*chartTitle="User Domain COM Addresses"*/}
                                    {/*metrics="ga:users"*/}
                                    {/*dimensions="ga:networkDomain"*/}
                                    {/*filters="ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data"*/}
                                    {/*startDate="2016-04-23"*/}
                                    {/*endDate="yesterday"/>*/}
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
                                {comptoxDataSubtabInstance}
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

export default DataToolsIndex;
