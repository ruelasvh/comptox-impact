/**
 * Created by vruelasr on 8/22/17.
 */
import React from 'react'
import {
  Tab, Nav, NavItem
} from 'react-bootstrap'
import DoughnutChart from './DoughnutChart'
import BarLineChart from './BarLineChart'
import MapChart from './MapChartDatamaps'

const DataDownloadsWebsitePaneView = ({ props }) => (
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
)

export default DataDownloadsWebsitePaneView