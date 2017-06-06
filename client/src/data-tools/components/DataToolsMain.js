/**
 * Created by Victor H. Ruelas-Rivera on 3/27/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { Grid, Row, Col, Nav, NavItem, Tab, Accordion, Panel } from 'react-bootstrap';
import LineChart from './LineChart';
import BarChart from './BarChart';
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
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICA5JEKDA'), // Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDa44YKDA'), // Unique Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDA-pMKDA'), // Country Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCoppsJDA'), // Country Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID8qZ8KDA'), // Domain Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZ0oUKDA'), // Domain Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID4-4IKDA'), // State Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCoppsKDA'), // State Year
        /* ACToR */
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDruI8KDA'), // Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCo_IoJDA'), // Unique Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID8vYEKDA'), // Country Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICv9YQKDA'), // Country Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC-8YsKDA'), // Domain Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID8qZ8JDA'), // Domain Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC63J8JDA'), // State Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICEtIoKDA'), // State Year
        /* CPCat */
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDrop4KDA'), // Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDZ8JILDA'), // Unique Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDAnIILDA'), // Country Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCosYYKDA'), // Country Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICEypsKDA'), // Domain Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICE3oYKDA'), // Domain Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID89o4JDA'), // State Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZ54MJDA'), // State Year
        /* EDSP21 */
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCo_IoLDA'), // Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDruI8JDA'), // Unique Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDrop4JDA'), // Country Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDZ8NIIDA'), // Country Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDAnMIIDA'), // Domain Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCosYYJDA'), // Domain Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID8vYEJDA'), // State Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICv9YQJDA'), // State Year
        /* ToxCast */
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDA-pMJDA'), // Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCoppsLDA'), // Unique Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDZrIsJDA'), // Country Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICEtIoJDA'), // Country Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC63J8LDA'), // Domain Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDZ8NIKDA'), // Domain Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIDAnMIKDA'), // State Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCosYYLDA'), // State Year
        /* CompTox Download Drupal */
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCo6JMJDA'), // Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZ54MLDA'), // Unique Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC-7ZoKDA'), // Country Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICv4ZkLDA'), // Country Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICdlIcKDA'), // Domain Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC-8YsJDA'), // Domain Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICv9YQLDA'), // State Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID8vYELDA'), // State Year
        /* ToxCast Download Drupal */
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICv4dkIDA'), // Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICdwJoJDA'), // Unique Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICdipYKDA'), // Country Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCo6JMLDA'), // Country Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZ58MIDA'), // Domain Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICEtIoLDA'), // Domain Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC63N8IDA'), // State Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgID8qZ8LDA'), // State Year
        /* DSSTox Download Drupal */
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC6qI4JDA'), // Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICEoJMJDA'), // Unique Page Views
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICdwJoLDA'), // Country Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICdipYJDA'), // Country Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgMCo6NMIDA'), // Domain Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICZ58MKDA'), // Domain Year
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgICEtMoIDA'), // State Month
        queryGAApi('ag9kfmltcGFjdC0xNTIwMTlyFQsSCEFwaVF1ZXJ5GICAgIC63N8KDA')  // State Year
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
          countryMonth: results[2],
          countryYear: results[3],
          domainMonth: results[4],
          domainYear: results[5],
          stateMonth: results[6],
          stateYear: results[7]
        };
        actor.usage = {
          pageViews: results[8],
          uniquePageViews: results[9],
          countryMonth: results[10],
          countryYear: results[11],
          domainMonth: results[12],
          domainYear: results[13],
          stateMonth: results[14],
          stateYear: results[15]
        };
        cpcat.usage = {
          pageViews: results[16],
          uniquePageViews: results[17],
          countryMonth: results[18],
          countryYear: results[19],
          domainMonth: results[20],
          domainYear: results[21],
          stateMonth: results[22],
          stateYear: results[23]
        };
        edsp21.usage = {
          pageViews: results[24],
          uniquePageViews: results[25],
          countryMonth: results[26],
          countryYear: results[27],
          domainMonth: results[28],
          domainYear: results[29],
          stateMonth: results[30],
          stateYear: results[31]
        };
        toxcast.usage = {
          pageViews: results[32],
          uniquePageViews: results[33],
          countryMonth: results[34],
          countryYear: results[35],
          domainMonth: results[36],
          domainYear: results[37],
          stateMonth: results[38],
          stateYear: results[39]
        };
        comptoxdashboard.datadownloads = {
          pageViews: results[40],
          uniquePageViews: results[41],
          countryMonth: results[42],
          countryYear: results[43],
          domainMonth: results[44],
          domainYear: results[45],
          stateMonth: results[46],
          stateYear: results[47]
        };
        toxcast.datadownloads = {
          pageViews: results[48],
          uniquePageViews: results[49],
          countryMonth: results[50],
          countryYear: results[51],
          domainMonth: results[52],
          domainYear: results[53],
          stateMonth: results[54],
          stateYear: results[55]
        };
        dsstox.datadownloads = {
          pageViews: results[56],
          uniquePageViews: results[57],
          countryMonth: results[58],
          countryYear: results[59],
          domainMonth: results[60],
          domainYear: results[61],
          stateMonth: results[62],
          stateYear: results[63]
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
                    </Nav>
                  </Panel>
                    : ' ' }
                  { props.tab.data.hasOwnProperty('datadownloads') ?
                  <Panel header={props.tab.name + " Data Downloads"} eventKey={ props.tab.data.hasOwnProperty('usage') ? '2' : '1'}>
                    <Nav bsStyle="pills" stacked>
                      <NavItem eventKey="drupal-page-views">Page Views</NavItem>
                      <NavItem eventKey="drupal-unique-page-views">Unique Page Views</NavItem>
                      <NavItem eventKey="drupal-type-users">Types of Users</NavItem>
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
                      {props.self.state.isFetching ?
                        ' ' : <BarChart data={props.tab.data.usage.pageViews}/>
                      }
                    </Tab.Pane>
                    <Tab.Pane eventKey="unique-page-views">
                      {props.self.state.isFetching ?
                        ' ' : <LineChart data={props.tab.data.usage.uniquePageViews}/>
                      }
                    </Tab.Pane>
                    <Tab.Pane eventKey="type-users">
                      {props.self.state.isFetching ?
                        ' ' : <DoughnutChart data={props.tab.data.usage.domainYear} />
                      }
                      {props.self.state.isFetching ?
                        ' ' : <DoughnutChart data={props.tab.data.usage.domainMonth} />
                      }
                    </Tab.Pane>
                  </Tab.Content>
                  : ' ' }
                { props.tab.data.hasOwnProperty('datadownloads') ?
                  <Tab.Content animation>
                    <Tab.Pane eventKey="drupal-page-views">
                      {props.self.state.isFetching ?
                        ' ' : <LineChart data={props.tab.data.datadownloads.pageViews}/>
                      }
                    </Tab.Pane>
                    <Tab.Pane eventKey="drupal-unique-page-views">
                      {props.self.state.isFetching ?
                        ' ' : <LineChart data={props.tab.data.datadownloads.uniquePageViews}/>
                      }
                    </Tab.Pane>
                    <Tab.Pane eventKey="drupal-type-users">
                      {props.self.state.isFetching ?
                        ' ' : <DoughnutChart data={props.tab.data.datadownloads.domainYear} />
                      }
                      {props.self.state.isFetching ?
                        ' ' : <DoughnutChart data={props.tab.data.datadownloads.domainMonth} />
                      }
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
