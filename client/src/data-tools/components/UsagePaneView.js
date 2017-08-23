/**
 * Created by vruelasr on 8/22/17.
 */
import React from 'react'
import {
  Tab, Nav, NavItem
} from 'react-bootstrap'
import DoughnutChart from './DoughnutChart'
import Chart from './Chart'
import BarLineChart from './BarLineChart'
import Table from './Table'
import MapChart from './MapChartDatamaps'

const UsagePaneView = ({ props }) => (
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
)

export default UsagePaneView