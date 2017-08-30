/**
 * Created by vruelasr on 8/22/17.
 */
import React from 'react'
import PropTypes from 'prop-types'
import {
  Tab, Nav, NavItem
} from 'react-bootstrap'
import DoughnutChart from './DoughnutChart'
import ActiveUsersChart from './ActiveUsersChart'
import Chart from './Chart'
import BarLineChart from './BarLineChart'
import Table from './Table'
import MapChart from './MapChartDatamaps'

const UsagePaneView = ({ data }) => (
  <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
    <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="page-views">
      {data.usage.hasOwnProperty('pageViews') ?
        <Chart data={data.usage.pageViews}/> : ' '
      }
    </Tab.Pane>
    <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="unique-page-views">
      {data.usage.hasOwnProperty('uniquePageViews') ?
        <BarLineChart data={data.usage.uniquePageViews}/> : ' '
      }
    </Tab.Pane>
    <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="type-users">
      {data.usage.hasOwnProperty('activeUsers') ?
        <ActiveUsersChart label="Active Users" data={data.usage.activeUsers}/> : ' '
      }
      <br/><br/>
      {!data.isFetching && data.usage.hasOwnProperty('newReturning') ?
        <Table data={data.usage.newReturning}/> : ' '
      }
      <br/>
      <Tab.Container id="users-domains-tabs" defaultActiveKey="month">
        <div style={{paddingBottom: '100'}}>
          Time Period:
          <Nav bsStyle="pills">
            {data.usage.domainMonth.hasOwnProperty('data') ?
              <NavItem eventKey="month">{data.usage.domainMonth.timeperiod}</NavItem> : ' '
            }
            {data.usage.domainYear.hasOwnProperty('data') ?
              <NavItem eventKey="year">{data.usage.domainYear.timeperiod}</NavItem> : ' '
            }
          </Nav>
          <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
            <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="month">
              {data.usage.domainMonth.hasOwnProperty('data') ?
                <DoughnutChart data={data.usage.domainMonth.data} /> : ' '
              }
            </Tab.Pane>
            <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="year">
              {data.usage.domainYear.hasOwnProperty('data') ?
                <DoughnutChart data={data.usage.domainYear.data} /> : ' '
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
                    {data.usage.stateMonth.hasOwnProperty('data') ?
                      <NavItem eventKey="month">{data.usage.stateMonth.timeperiod}</NavItem> : ' '
                    }
                    {data.usage.stateYear.hasOwnProperty('data') ?
                      <NavItem eventKey="year">{data.usage.stateYear.timeperiod}</NavItem> : ' '
                    }
                  </Nav>
                  <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                    <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="month">
                      {data.usage.stateMonth.hasOwnProperty('data') ?
                        <MapChart data={data.usage.stateMonth.data} scope={'usa'} /> : ' '
                      }
                    </Tab.Pane>
                    <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="year">
                      {data.usage.stateYear.hasOwnProperty('data') ?
                        <MapChart data={data.usage.stateYear.data} scope={'usa'} /> : ' '
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
                    {data.usage.countryMonth.hasOwnProperty('data') ?
                      <NavItem eventKey="month">{data.usage.countryMonth.timeperiod}</NavItem> : ' '
                    }
                    {data.usage.countryYear.hasOwnProperty('data') ?
                      <NavItem eventKey="year">{data.usage.countryYear.timeperiod}</NavItem> : ' '
                    }
                  </Nav>
                  <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                    <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="month">
                      {data.usage.countryMonth.hasOwnProperty('data') ?
                        <MapChart data={data.usage.countryMonth.data} scope={'world'} /> : ' '
                      }
                    </Tab.Pane>
                    <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="year">
                      {data.usage.countryYear.hasOwnProperty('data') ?
                        <MapChart data={data.usage.countryYear.data} scope={'world'} /> : ' '
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

UsagePaneView.propTypes = {
  data: PropTypes.object.isRequired,
}

export default UsagePaneView