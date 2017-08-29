/**
 * Created by vruelasr on 8/22/17.
 */
import React from 'react'
import PropTypes from 'prop-types'
import {
  Tab, Nav, NavItem
} from 'react-bootstrap'
import DoughnutChart from './DoughnutChart'
import Table from './Table'
import MapChart from './MapChartDatamaps'
import Top10Chart from './Top10Chart'
import TreeChart from './TreeChart'

const FtpDownloadsPaneView = ({ data }) => (
  <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
    <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="ftp-stats">
      {data.filedownloads.hasOwnProperty('month') ?
        <Top10Chart {...data.filedownloads.month} /> : ' '
      }
      {data.filedownloads.hasOwnProperty('year') ?
        <Top10Chart {...data.filedownloads.year} /> : ' '
      }
      {data.filedownloads.hasOwnProperty('tree') ?
        <TreeChart data={data.filedownloads.tree} collapsed={data.filedownloads.tree.children.length > 1}/> : ' '
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
              {data.filedownloads.stateYear.hasOwnProperty('data') ?
                <MapChart data={data.filedownloads.stateYear.data} scope={'usa'} /> : ' '
              }
            </Tab.Pane>
            <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="world">
              {data.filedownloads.countryYear.hasOwnProperty('data') ?
                <MapChart data={data.filedownloads.countryYear.data} scope={'world'} /> : ' '
              }
            </Tab.Pane>
          </Tab.Content>
        </div>
      </Tab.Container>
    </Tab.Pane>
    <Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="ftp-type-users">
      {data.filedownloads.hasOwnProperty('visits') ?
        <Table data={data.filedownloads.visits}/> : ' '
      }
      {data.filedownloads.domain.hasOwnProperty('data') ?
        <DoughnutChart data={data.filedownloads.domain.data} /> : ' '
      }
    </Tab.Pane>
  </Tab.Content>
)

FtpDownloadsPaneView.propTypes = {
  data: PropTypes.object.isRequired,
}

export default FtpDownloadsPaneView