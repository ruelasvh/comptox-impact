/**
 * Created by vruelasr on 8/22/17.
 */
import React from 'react'
import {
  Tab, Nav, NavItem
} from 'react-bootstrap'
import DoughnutChart from './DoughnutChart'
import Table from './Table'
import MapChart from './MapChartDatamaps'
import Top10Chart from './Top10Chart'
import TreeChart from './TreeChart'

const FtpDownloadsPaneView = ({ props }) => (
  <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
    <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="ftp-stats">
      {!props.isFetching ?
        <Top10Chart {...props.tab.data.filedownloads.month} /> : ' '
      }
      {!props.isFetching ?
        <Top10Chart {...props.tab.data.filedownloads.year} /> : ' '
      }
      {!props.isFetching ?
        <TreeChart data={props.tab.data.filedownloads.tree} collapsed={props.tab.data.filedownloads.tree.children.length > 1}/> : ' '
      }
      <br/>
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
      {!props.isFetching && props.tab.data.filedownloads.hasOwnProperty('visits') ?
        <Table data={props.tab.data.filedownloads.visits}/> : ' '
      }
      {!props.isFetching && props.tab.data.filedownloads.domain.hasOwnProperty('data') ?
        <DoughnutChart data={props.tab.data.filedownloads.domain.data} /> : ' '
      }
    </Tab.Pane>
  </Tab.Content>
)

export default FtpDownloadsPaneView