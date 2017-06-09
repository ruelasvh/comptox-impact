/**
 * Created by Victor H. Ruelas-Rivera on 3/27/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { Grid, Row, Col, Nav, NavItem, Tab, Accordion, Panel } from 'react-bootstrap';
import LineChart from './LineChart';
import BarChart from './BarChart';
import DoughnutChart from './DoughnutChart';
import MapChart from './MapChartDatamaps';
import ActorAnalog from './ActorAnalog';
import { queryGAApi } from '../../utils/Client';
import '../styles/datatoolsmain.css';


class DataToolsIndex extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {
      var self = this;
      const analytics = this.props.analytics;
      const tablist = [
        { name: 'CompTox Dashboard', eventKey: 'first', data: analytics.comptoxdashboard, description: "The CompTox Dashboard contains information on over 700,000 chemicals currently in use. Users can access chemical structures, experimental, and predicted physiochemical and toxicity data, and additional links to relevant websites and applications." },
        { name: 'ACToR', eventKey: 'second', data: analytics.actor, description: "The Aggregated Computational Toxicology Online Resource (ACToR) aggregates data from more than 1,000 public sources on over 500,000 chemicals and can be used to query a specific chemical and find all publicly available hazard, exposure, and risk assessment data." },
        { name: 'CPCat', eventKey: 'third', data: analytics.cpcat, description: "The Calico Persian Cat (CPCat) is named Bella. She's so pretty! She likes Friskies brand cat food. Here's a video of her sitting on a tv tray: https://www.youtube.com/watch?v=ROl_Hg-0aLA" },
        { name: 'EDSP21', eventKey: 'fourth', data: analytics.edsp21, description: "EDSP21 is the newest craze that is rocking the nation. Originally from Manchester, the band has since relocated to the United States where they routinely sell out in major cities at venues such as public buses and subways. Standing Room Only, y'all!" },
        { name: 'ToxCast', eventKey: 'fifth', data: analytics.toxcast, description: "The ToxCast Dashboard has data on over 9,000 chemicals and information from more than 1,000 high-throughput assay endpoint components. Users can explore the data from a chemical or an assay viewpoint." },
        { name: 'DSSTox', eventKey: 'sixth', data: analytics.dsstox, description: "DSSTox is a myth. Don't buy into the hype." }
      ];

      const tabs = tablist.map((tab) => <NavItem key={tab.name} eventKey={tab.eventKey}>{tab.name}</NavItem>);

      function Subtab(props) {
        return (
          <Tab.Container defaultActiveKey={ props.tab.data.hasOwnProperty('usage') ? "page-views" : "drupal-page-views"}>
            <Row className="clearfix">
              <Col sm={3}>
                <Accordion defaultActiveKey="1">
                  { props.tab.data.hasOwnProperty('usage') ?
                  <Panel header={props.tab.name + " Usage"} eventKey="1">
                    <Nav bsStyle="pills" stacked>
                      <NavItem eventKey="page-views">Page Views</NavItem>
                      <NavItem eventKey="unique-page-views">Unique Page Views</NavItem>
                      <NavItem eventKey="type-users">Types of Users</NavItem>
                      <NavItem eventKey="geographics">Geographics</NavItem>
                    </Nav>
                  </Panel>
                    : ' ' }
                  { props.tab.data.hasOwnProperty('datadownloads') ?
                  <Panel header={props.tab.name + " Data Downloads"} eventKey={ props.tab.data.hasOwnProperty('usage') ? '2' : '1'}>
                    <Nav bsStyle="pills" stacked>
                      <NavItem eventKey="drupal-page-views">Page Views</NavItem>
                      <NavItem eventKey="drupal-unique-page-views">Unique Page Views</NavItem>
                      <NavItem eventKey="drupal-type-users">Types of Users</NavItem>
                      <NavItem eventKey="drupal-geographics">Geographics</NavItem>
                    </Nav>
                  </Panel>
                    : ' ' }
                  { props.tab.data.hasOwnProperty('ftpdownloads') ?
                  <Panel header={props.tab.name + " FTP Downloads"} eventKey="3">
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
                  <Tab.Content animation>
                    <Tab.Pane eventKey="page-views">
                      {props.isFetching ?
                        ' ' : <BarChart data={props.tab.data.usage.pageViews}/>
                      }
                    </Tab.Pane>
                    <Tab.Pane eventKey="unique-page-views">
                      {props.isFetching ?
                        ' ' : <LineChart data={props.tab.data.usage.uniquePageViews}/>
                      }
                    </Tab.Pane>
                    <Tab.Pane eventKey="type-users">
                      {props.isFetching ?
                        ' ' : <DoughnutChart data={props.tab.data.usage.domainMonth} />
                      }
                      {props.isFetching ?
                        ' ' : <DoughnutChart data={props.tab.data.usage.domainYear} />
                      }
                    </Tab.Pane>
                    <Tab.Pane eventKey="geographics">
                      <Tab.Container id="geographics-tabs" defaultActiveKey="world">
                        <div>
                        Region:
                        <Nav bsStyle="pills">
                          <NavItem eventKey="usa">USA</NavItem>
                          <NavItem eventKey="world">World</NavItem>
                        </Nav>
                        <Tab.Content animation>
                          <Tab.Pane eventKey="usa">
                            <Tab.Container id="geographics-usa-subtabs" defaultActiveKey="month">
                              <div>
                              Time Period:
                              <Nav bsStyle="pills">
                                <NavItem eventKey="month">Month</NavItem>
                                <NavItem eventKey="year">Year</NavItem>
                              </Nav>
                              <Tab.Content animation>
                                <Tab.Pane eventKey="month">
                                  {props.isFetching ?
                                    ' ' : <MapChart data={props.tab.data.usage.stateMonth} scope={'usa'} />
                                  }
                                </Tab.Pane>
                                <Tab.Pane eventKey="year">
                                  {props.isFetching ?
                                    ' ' : <MapChart data={props.tab.data.usage.stateYear} scope={'usa'} />
                                  }
                                </Tab.Pane>
                              </Tab.Content>
                              </div>
                            </Tab.Container>
                          </Tab.Pane>
                          <Tab.Pane eventKey="world">
                            <Tab.Container id="geographics-world-subtabs" defaultActiveKey="month">
                              <div>
                              Time Period:
                              <Nav bsStyle="pills">
                                <NavItem eventKey="month">Month</NavItem>
                                <NavItem eventKey="year">Year</NavItem>
                              </Nav>
                              <Tab.Content animation>
                                <Tab.Pane eventKey="month">
                                  {props.isFetching ?
                                    ' ' : <MapChart data={props.tab.data.usage.countryMonth} scope={'world'} />
                                  }
                                </Tab.Pane>
                                <Tab.Pane eventKey="year">
                                  {props.isFetching ?
                                    ' ' : <MapChart data={props.tab.data.usage.countryYear} scope={'world'} />
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
                  <Tab.Content animation>
                    <Tab.Pane eventKey="drupal-page-views">
                      {props.isFetching ?
                        ' ' : <LineChart data={props.tab.data.datadownloads.pageViews}/>
                      }
                    </Tab.Pane>
                    <Tab.Pane eventKey="drupal-unique-page-views">
                      {props.isFetching ?
                        ' ' : <LineChart data={props.tab.data.datadownloads.uniquePageViews}/>
                      }
                    </Tab.Pane>
                    <Tab.Pane eventKey="drupal-type-users">
                      {props.isFetching ?
                        ' ' : <DoughnutChart data={props.tab.data.datadownloads.domainMonth} />
                      }
                      {props.isFetching ?
                        ' ' : <DoughnutChart data={props.tab.data.datadownloads.domainYear} />
                      }
                    </Tab.Pane>
                    <Tab.Pane eventKey="drupal-geographics">
                      <Tab.Container id="geographics-tabs" defaultActiveKey="world">
                        <div>
                        Region:
                        <Nav bsStyle="pills">
                          <NavItem eventKey="usa">USA</NavItem>
                          <NavItem eventKey="world">World</NavItem>
                        </Nav>
                        <Tab.Content animation>
                          <Tab.Pane eventKey="usa">
                            <Tab.Container id="geographics-usa-subtabs" defaultActiveKey="month">
                              <div>
                              Time Period:
                              <Nav bsStyle="pills">
                                <NavItem eventKey="month">Month</NavItem>
                                <NavItem eventKey="year">Year</NavItem>
                              </Nav>
                              <Tab.Content animation>
                                <Tab.Pane eventKey="month">
                                  {props.isFetching ?
                                    ' ' : <MapChart data={props.tab.data.datadownloads.stateMonth} scope={'usa'} />
                                  }
                                </Tab.Pane>
                                <Tab.Pane eventKey="year">
                                  {props.isFetching ?
                                    ' ' : <MapChart data={props.tab.data.datadownloads.stateYear} scope={'usa'} />
                                  }
                                </Tab.Pane>
                              </Tab.Content>
                              </div>
                            </Tab.Container>
                          </Tab.Pane>
                          <Tab.Pane eventKey="world">
                            <Tab.Container id="geographics-world-subtabs" defaultActiveKey="month">
                              <div>
                              Time Period:
                              <Nav bsStyle="pills">
                                <NavItem eventKey="month">Month</NavItem>
                                <NavItem eventKey="year">Year</NavItem>
                              </Nav>
                              <Tab.Content animation>
                                <Tab.Pane eventKey="month">
                                  {props.isFetching ?
                                    ' ' : <MapChart data={props.tab.data.datadownloads.countryMonth} scope={'world'} />
                                  }
                                </Tab.Pane>
                                <Tab.Pane eventKey="year">
                                  {props.isFetching ?
                                    ' ' : <MapChart data={props.tab.data.datadownloads.countryYear} scope={'world'} />
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
                  <Tab.Content animation>
                    <Tab.Pane eventKey="analog">
                      <ActorAnalog />
                    </Tab.Pane>
                  </Tab.Content>
              </Col>
            </Row>
          </Tab.Container>
        );
      }
      const pages = tablist.map((tab) => <Tab.Pane key={tab.name} eventKey={tab.eventKey}><br/>{tab.description}<br/><br/><Subtab tab={tab} self={this.props.analytics}/></Tab.Pane>);

        const dataDomainTabInstance = (
            <Tab.Container defaultActiveKey="first">
                <Row className="clearfix" >
                    <Col sm={12}>
                        <Nav bsStyle="tabs" bsClass="nav-short nav">
                          {tabs}
                        </Nav>
                    </Col>
                    <Col sm={12}>
                        <Tab.Content animation>
                          {pages}
                        </Tab.Content>
                    </Col>
                </Row>
            </Tab.Container>
        );

        return (
            <div className="data-tools-container">
                <Grid>
                    <h1>CompTox Research Data and Tools Usage</h1>
                    <br/>
                    {dataDomainTabInstance}
                </Grid>
            </div>
        )
    }
}

export default DataToolsIndex;
