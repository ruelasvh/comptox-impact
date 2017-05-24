/**
 * Created by Victor H. Ruelas-Rivera on 3/27/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { Grid, Row, Col, Nav, NavItem, Tab, Accordion, Panel } from 'react-bootstrap';
import LineChart from './LineChart';
import DoughnutChart from './DoughnutChart';
import ActorAnalog from './ActorAnalog';
import { queryGAApi } from '../../utils/Client';
import '../styles/datatoolsmain.css';


class DataToolsIndex extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            datasets: {
                analytics: {
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
        /* CompTox Dashboard */
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICA5JEKDA'),
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDa44YKDA'),
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZ0oUKDA'),
        /* ACToR */
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID4iYwLDA'),
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDe_pgKDA'),
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICAw5UJDA'),
        /* CPCat */
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICvyIAKDA'),
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMDIqoQKDA'),
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZzpQKDA'),
        /* EDSP21 */
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDtsYMKDA'),
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID4iYwKDA'),
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZ0oUJDA'),
        /* ToxCast */
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICAw5UKDA'),
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMDIqoQJDA'),
        queryGAApi('https://impact-152019.appspot.com/query?id=ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICvnJEJDA'),
      ]).then(function (results) {
        let comptoxdashboard = _this.state.datasets.analytics.comptoxdashboard;
        let actor = _this.state.datasets.analytics.actor;
        let cpcat = _this.state.datasets.analytics.cpcat;
        let edsp21 = _this.state.datasets.analytics.edsp21;
        let toxcast = _this.state.datasets.analytics.toxcast;
        let dsstox = _this.state.datasets.analytics.dsstox;
        comptoxdashboard.usage = {
          pageViews: results[0],
          uniquePageViews: results[1],
          domainTypes: results[2]
        };
        actor.usage = {
          pageViews: results[3],
          uniquePageViews: results[4],
          domainTypes: results[5]
        };
        cpcat.usage = {
          pageViews: results[6],
          uniquePageViews: results[7],
          domainTypes: results[8]
        };
        edsp21.usage = {
          pageViews: results[9],
          uniquePageViews: results[10],
          domainTypes: results[11]
        };
        toxcast.usage = {
          pageViews: results[12],
          uniquePageViews: results[13],
          domainTypes: results[14]
        };

        let datasets = {
          analytics: {
            comptoxdashboard,
            actor,
            cpcat,
            edsp21,
            toxcast,
            dsstox
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
      var self = this;
      const analytics = this.state.datasets.analytics;
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
          <Tab.Container defaultActiveKey="page-views">
            <Row className="clearfix">
              <Col sm={3}>
                <Accordion defaultActiveKey="1">
                  { props.tab.data.hasOwnProperty('usage') ? 
                  <Panel header={props.tab.name + " Usage"} eventKey="1">
                    <Nav bsStyle="pills" stacked>
                      <NavItem eventKey="page-views">Page Views</NavItem>
                      <NavItem eventKey="unique-page-views">Unique Page Views</NavItem>
                      <NavItem eventKey="type-users">Types of Users</NavItem>
                    </Nav>
                  </Panel>
                    : ' ' }
                  { props.tab.data.hasOwnProperty('datadownloads') ? 
                  <Panel header={props.tab.name + " Data Downloads"} eventKey={ props.tab.data.hasOwnProperty('usage') ? '2' : '1'}>
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
                      {props.self.state.isFetching ?
                        ' ' : <LineChart data={props.tab.data.usage.pageViews}/>
                      }
                    </Tab.Pane>
                    <Tab.Pane eventKey="unique-page-views">
                      {props.self.state.isFetching ?
                        ' ' : <LineChart data={props.tab.data.usage.uniquePageViews}/>
                      }
                    </Tab.Pane>
                    <Tab.Pane eventKey="type-users">
                      {props.self.state.isFetching ?
                        ' ' : <DoughnutChart data={props.tab.data.usage.domainTypes} label="Type Of Users By Domain"/>
                      }
                    </Tab.Pane>
                    <Tab.Pane eventKey="analog">
                      <ActorAnalog />
                    </Tab.Pane>
                  </Tab.Content>
                : ' ' }
              </Col>
            </Row>
          </Tab.Container>
        );
      }
      const pages = tablist.map((tab) => <Tab.Pane key={tab.name} eventKey={tab.eventKey}><br/>{tab.description}<br/><br/><Subtab tab={tab} self={this}/></Tab.Pane>);

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
/*
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
          </Tab.Pane>
          <Tab.Pane eventKey="a-usage-google-analytics">
            <h3>Usage from Google Analytics</h3>
          </Tab.Pane>
        </Tab.Content>
      </Col>
    </Row>
  </Tab.Container>
);
*/
