/**
 * Created by vruelasr on 7/24/17.
 */
import React from 'react';
import PropTypes from 'prop-types';
import { Row, Col, Nav, NavItem, Tab, Accordion, Panel } from 'react-bootstrap';
import BarLineChart from './BarLineChart';
import Chart from './Chart';
import TreeChart from './TreeChart';
import Table from './Table';
import Top10Chart from './Top10Chart';
import DoughnutChart from './DoughnutChart';
import MapChart from './MapChartDatamaps';
import ActorAnalog from './ActorAnalog';
import '../styles/datatoolsmain.css';

const Subtab = (props) => (
    <Tab.Container defaultActiveKey={ props.tab.data.hasOwnProperty('usage') ? "page-views" : "drupal-page-views"}>
        <Row className="clearfix">
            <Col sm={3}>
                <Accordion defaultActiveKey="1">
                    { props.tab.data.hasOwnProperty('usage') ?
                        <Panel header={props.tab.name + (props.tab.name === 'CompTox Dashboard' ? " Usage" : " Dashboard Usage")} eventKey="1">
                            <Nav bsStyle="pills" stacked>
                                <NavItem eventKey="page-views">Page Views</NavItem>
                                <NavItem eventKey="unique-page-views">Unique Page Views</NavItem>
                                <NavItem eventKey="type-users">Users</NavItem>
                                <NavItem eventKey="geographics">Geographics</NavItem>
                            </Nav>
                        </Panel>
                        : ' ' }
                    { props.tab.data.hasOwnProperty('datadownloads') ?
                        <Panel header={props.tab.name + " Data Download Website"} eventKey={ props.tab.data.hasOwnProperty('usage') ? '2' : '1'}>
                            <Nav bsStyle="pills" stacked>
                                <NavItem eventKey="drupal-page-views">Page Views</NavItem>
                                <NavItem eventKey="drupal-unique-page-views">Unique Page Views</NavItem>
                                <NavItem eventKey="drupal-type-users">Types of Users</NavItem>
                                <NavItem eventKey="drupal-geographics">Geographics</NavItem>
                            </Nav>
                        </Panel>
                        : ' ' }
                    { props.tab.data.hasOwnProperty('filedownloads') ?
                        <Panel header={props.tab.name + " FTP Data Downloads"} eventKey="3">
                            <Nav bsStyle="pills" stacked>
                                <NavItem eventKey="ftp-stats">Download Counts</NavItem>
                                <NavItem eventKey="ftp-geographics">Geographics</NavItem>
                                <NavItem eventKey="ftp-type-users">Types of Users</NavItem>
                            </Nav>
                        </Panel>
                        : ' ' }
                    { props.tab.data.hasOwnProperty('analog') ?
                        <Panel header={props.tab.name + " Analog Stats"} eventKey="4">
                            <Nav bsStyle="pills" stacked>
                                <NavItem eventKey="analog">Analog Stats</NavItem>
                            </Nav>
                        </Panel>
                        : ' ' }
                </Accordion>
            </Col>
            <Col sm={9}>
                { props.tab.data.hasOwnProperty('usage') ?
                    <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="page-views">
                            {props.isFetching ?
                                ' ' : <Chart data={props.tab.data.usage.pageViews}/>
                            }
                        </Tab.Pane>
                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="unique-page-views">
                            {props.isFetching ?
                                ' ' : <BarLineChart data={props.tab.data.usage.uniquePageViews}/>
                            }
                        </Tab.Pane>
                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="type-users">
                            {!props.isFetching && props.tab.data.usage.hasOwnProperty('activeUsers') ?
                                <Chart type="line" label="Active Users" data={props.tab.data.usage.activeUsers}/> : ' '
                            }
                            <br/><br/>
                            {!props.isFetching && props.tab.data.usage.hasOwnProperty('newReturning') ?
                                <Table data={props.tab.data.usage.newReturning}/> : ' '
                            }
                            <br/>
                            <Tab.Container id="users-domains-tabs" defaultActiveKey="month">
                                <div style={{paddingBottom: '100'}}>
                                    Time Period:
                                    <Nav bsStyle="pills">
                                        {props.tab.data.usage.domainMonth.hasOwnProperty('data') ?
                                            <NavItem eventKey="month">{props.tab.data.usage.domainMonth.timeperiod}</NavItem> : ' '
                                        }
                                        {props.tab.data.usage.domainYear.hasOwnProperty('data') ?
                                            <NavItem eventKey="year">{props.tab.data.usage.domainYear.timeperiod}</NavItem> : ' '
                                        }
                                    </Nav>
                                    <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="month">
                                            {!props.isFetching && props.tab.data.usage.domainMonth.hasOwnProperty('data') ?
                                                <DoughnutChart data={props.tab.data.usage.domainMonth.data} /> : ' '
                                            }
                                        </Tab.Pane>
                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="year">
                                            {!props.isFetching && props.tab.data.usage.domainYear.hasOwnProperty('data') ?
                                                <DoughnutChart data={props.tab.data.usage.domainYear.data} /> : ' '
                                            }
                                        </Tab.Pane>
                                    </Tab.Content>
                                </div>
                            </Tab.Container>
                        </Tab.Pane>
                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="geographics">
                            <Tab.Container id="geographics-tabs" defaultActiveKey="usa">
                                <div>
                                    Region:
                                    <Nav bsStyle="pills">
                                        <NavItem eventKey="usa">USA</NavItem>
                                        <NavItem eventKey="world">World</NavItem>
                                    </Nav>
                                    <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="usa">
                                            <Tab.Container id="geographics-usa-subtabs" defaultActiveKey="month">
                                                <div>
                                                    Time Period:
                                                    <Nav bsStyle="pills">
                                                        {props.tab.data.usage.stateMonth.hasOwnProperty('data') ?
                                                            <NavItem eventKey="month">{props.tab.data.usage.stateMonth.timeperiod}</NavItem> : ' '
                                                        }
                                                        {props.tab.data.usage.stateYear.hasOwnProperty('data') ?
                                                            <NavItem eventKey="year">{props.tab.data.usage.stateYear.timeperiod}</NavItem> : ' '
                                                        }
                                                    </Nav>
                                                    <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="month">
                                                            {!props.isFetching && props.tab.data.usage.stateMonth.hasOwnProperty('data') ?
                                                                <MapChart data={props.tab.data.usage.stateMonth.data} scope={'usa'} /> : ' '
                                                            }
                                                        </Tab.Pane>
                                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="year">
                                                            {!props.isFetching && props.tab.data.usage.stateYear.hasOwnProperty('data') ?
                                                                <MapChart data={props.tab.data.usage.stateYear.data} scope={'usa'} /> : ' '
                                                            }
                                                        </Tab.Pane>
                                                    </Tab.Content>
                                                </div>
                                            </Tab.Container>
                                        </Tab.Pane>
                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="world">
                                            <Tab.Container id="geographics-world-subtabs" defaultActiveKey="month">
                                                <div>
                                                    Time Period:
                                                    <Nav bsStyle="pills">
                                                        {props.tab.data.usage.countryMonth.hasOwnProperty('data') ?
                                                            <NavItem eventKey="month">{props.tab.data.usage.countryMonth.timeperiod}</NavItem> : ' '
                                                        }
                                                        {props.tab.data.usage.countryYear.hasOwnProperty('data') ?
                                                            <NavItem eventKey="year">{props.tab.data.usage.countryYear.timeperiod}</NavItem> : ' '
                                                        }
                                                    </Nav>
                                                    <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="month">
                                                            {!props.isFetching && props.tab.data.usage.countryMonth.hasOwnProperty('data') ?
                                                                <MapChart data={props.tab.data.usage.countryMonth.data} scope={'world'} /> : ' '
                                                            }
                                                        </Tab.Pane>
                                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="year">
                                                            {!props.isFetching && props.tab.data.usage.countryYear.hasOwnProperty('data') ?
                                                                <MapChart data={props.tab.data.usage.countryYear.data} scope={'world'} /> : ' '
                                                            }
                                                        </Tab.Pane>
                                                    </Tab.Content>
                                                </div>
                                            </Tab.Container>
                                        </Tab.Pane>
                                    </Tab.Content>
                                </div>
                            </Tab.Container>
                        </Tab.Pane>
                    </Tab.Content>
                    : ' ' }
                { props.tab.data.hasOwnProperty('datadownloads') ?
                    <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="drupal-page-views">
                            {props.isFetching ?
                                ' ' : <BarLineChart data={props.tab.data.datadownloads.pageViews}/>
                            }
                        </Tab.Pane>
                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="drupal-unique-page-views">
                            {props.isFetching ?
                                ' ' : <BarLineChart data={props.tab.data.datadownloads.uniquePageViews}/>
                            }
                        </Tab.Pane>
                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="drupal-type-users">
                            <Tab.Container id="users-tabs" defaultActiveKey="month">
                                <div>
                                    Time Period:
                                    <Nav bsStyle="pills">
                                        {props.tab.data.datadownloads.domainMonth.hasOwnProperty('data') ?
                                            <NavItem eventKey="month">{props.tab.data.datadownloads.domainMonth.timeperiod}</NavItem> : ' '
                                        }
                                        {props.tab.data.datadownloads.domainYear.hasOwnProperty('data') ?
                                            <NavItem eventKey="year">{props.tab.data.datadownloads.domainYear.timeperiod}</NavItem> : ' '
                                        }
                                    </Nav>
                                    <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="month">
                                            {!props.isFetching && props.tab.data.datadownloads.domainMonth.hasOwnProperty('data') ?
                                                <DoughnutChart data={props.tab.data.datadownloads.domainMonth.data} /> : ' '
                                            }
                                        </Tab.Pane>
                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="year">
                                            {!props.isFetching && props.tab.data.datadownloads.domainYear.hasOwnProperty('data') ?
                                                <DoughnutChart data={props.tab.data.datadownloads.domainYear.data} /> : ' '
                                            }
                                        </Tab.Pane>
                                    </Tab.Content>
                                </div>
                            </Tab.Container>
                        </Tab.Pane>
                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="drupal-geographics">
                            <Tab.Container id="geographics-tabs" defaultActiveKey="world">
                                <div>
                                    Region:
                                    <Nav bsStyle="pills">
                                        <NavItem eventKey="usa">USA</NavItem>
                                        <NavItem eventKey="world">World</NavItem>
                                    </Nav>
                                    <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="usa">
                                            <Tab.Container id="geographics-usa-subtabs" defaultActiveKey="month">
                                                <div>
                                                    Time Period:
                                                    <Nav bsStyle="pills">
                                                        {props.tab.data.datadownloads.stateMonth.hasOwnProperty('data') ?
                                                            <NavItem eventKey="month">{props.tab.data.datadownloads.stateMonth.timeperiod}</NavItem> : ' '
                                                        }
                                                        {props.tab.data.datadownloads.stateYear.hasOwnProperty('data') ?
                                                            <NavItem eventKey="year">{props.tab.data.datadownloads.stateYear.timeperiod}</NavItem> : ' '
                                                        }
                                                    </Nav>
                                                    <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="month">
                                                            {!props.isFetching && props.tab.data.datadownloads.stateMonth.hasOwnProperty('data') ?
                                                                <MapChart data={props.tab.data.datadownloads.stateMonth.data} scope={'usa'} /> : ' '
                                                            }
                                                        </Tab.Pane>
                                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="year">
                                                            {!props.isFetching && props.tab.data.datadownloads.stateMonth.hasOwnProperty('data') ?
                                                                <MapChart data={props.tab.data.datadownloads.stateYear.data} scope={'usa'} /> : ' '
                                                            }
                                                        </Tab.Pane>
                                                    </Tab.Content>
                                                </div>
                                            </Tab.Container>
                                        </Tab.Pane>
                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="world">
                                            <Tab.Container id="geographics-world-subtabs" defaultActiveKey="month">
                                                <div>
                                                    Time Period:
                                                    <Nav bsStyle="pills">
                                                        {props.tab.data.datadownloads.countryMonth.hasOwnProperty('data') ?
                                                            <NavItem eventKey="month">{props.tab.data.datadownloads.countryMonth.timeperiod}</NavItem> : ' '
                                                        }
                                                        {props.tab.data.datadownloads.countryYear.hasOwnProperty('data') ?
                                                            <NavItem eventKey="year">{props.tab.data.datadownloads.countryYear.timeperiod}</NavItem> : ' '
                                                        }
                                                    </Nav>
                                                    <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="month">
                                                            {!props.isFetching && props.tab.data.datadownloads.stateMonth.hasOwnProperty('data') ?
                                                                <MapChart data={props.tab.data.datadownloads.countryMonth.data} scope={'world'} /> : ' '
                                                            }
                                                        </Tab.Pane>
                                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="year">
                                                            {!props.isFetching && props.tab.data.datadownloads.stateMonth.hasOwnProperty('data') ?
                                                                <MapChart data={props.tab.data.datadownloads.countryYear.data} scope={'world'} /> : ' '
                                                            }
                                                        </Tab.Pane>
                                                    </Tab.Content>
                                                </div>
                                            </Tab.Container>
                                        </Tab.Pane>
                                    </Tab.Content>
                                </div>
                            </Tab.Container>
                        </Tab.Pane>
                    </Tab.Content>
                    : ' ' }
                { props.tab.data.hasOwnProperty('filedownloads') ?
                    <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="ftp-stats">
                            {!props.isFetching ?
                                <TreeChart data={props.tab.data.filedownloads.tree} /> : ' '
                            }
                            {!props.isFetching ?
                                <Top10Chart {...props.tab.data.filedownloads.month} /> : ' '
                            }
                            {!props.isFetching ?
                                <Top10Chart {...props.tab.data.filedownloads.year} /> : ' '
                            }
                        </Tab.Pane>
                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="ftp-geographics">
                            <Tab.Container id="ftp-geographics-tabs" defaultActiveKey="usa">
                                <div>
                                    Region:
                                    <Nav bsStyle="pills">
                                        <NavItem eventKey="usa">USA</NavItem>
                                        <NavItem eventKey="world">World</NavItem>
                                    </Nav>
                                    <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="usa">
                                            {!props.isFetching && props.tab.data.filedownloads.stateYear.hasOwnProperty('data') ?
                                                <MapChart data={props.tab.data.filedownloads.stateYear.data} scope={'usa'} /> : ' '
                                            }
                                        </Tab.Pane>
                                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="world">
                                            {!props.isFetching && props.tab.data.filedownloads.countryYear.hasOwnProperty('data') ?
                                                <MapChart data={props.tab.data.filedownloads.countryYear.data} scope={'world'} /> : ' '
                                            }
                                        </Tab.Pane>
                                    </Tab.Content>
                                </div>
                            </Tab.Container>
                        </Tab.Pane>
                        <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="ftp-type-users">
                            {!props.isFetching && props.tab.data.filedownloads.domain.hasOwnProperty('data') ?
                                <DoughnutChart data={props.tab.data.filedownloads.domain.data} /> : ' '
                            }
                        </Tab.Pane>
                    </Tab.Content>
                    : ' ' }
                <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                    <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="analog">
                        <ActorAnalog />
                    </Tab.Pane>
                </Tab.Content>
            </Col>
        </Row>
    </Tab.Container>
)

Subtab.propTypes = {
    props: PropTypes.object
}

export default Subtab;