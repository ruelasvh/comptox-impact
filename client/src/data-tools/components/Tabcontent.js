/**
 * Created by vruelasr on 7/24/17.
 */
import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { Row, Col, Nav, NavItem, Tab, Accordion, Panel } from 'react-bootstrap';
import ActorAnalog from './ActorAnalog';
import UsagePaneView from './UsagePaneView';
import DataDownlodsWebsitePaneView from './DataDownlodsWebsitePaneView'
import FtpDownloadsPaneView from './FtpDownloadsPaneView'
import '../styles/datatoolsmain.css';

class Tabcontent extends Component {
  // Make API calls here
  
  render() {
    const props = this.props
    
    return (
      <Tab.Container defaultActiveKey={ props.tab.data.hasOwnProperty('usage') ? "page-views" : "drupal-page-views"}>
        <Row className="clearfix">
          <Col sm={3}>
            <Accordion defaultActiveKey="1">
              { props.tab.data.hasOwnProperty('usage') ?
                <Panel
                  header={props.tab.name + (props.tab.name.includes('Chemistry Dashboard') ? " Usage" : " Dashboard Usage")}
                  eventKey="1">
                  <Nav bsStyle="pills" stacked>
                    <NavItem eventKey="page-views">Page Views</NavItem>
                    <NavItem eventKey="unique-page-views">Unique Page Views</NavItem>
                    <NavItem eventKey="type-users">Users</NavItem>
                    <NavItem eventKey="geographics">Geographics</NavItem>
                  </Nav>
                </Panel>
                : ' ' }
              { props.tab.data.hasOwnProperty('datadownloads') ?
                <Panel
                  header={props.tab.name + (props.tab.name.includes('CompTox Data') ? '' : " Data Download Website")}
                  eventKey={ props.tab.data.hasOwnProperty('usage') ? '2' : '1'}>
                  <Nav bsStyle="pills" stacked>
                    <NavItem eventKey="drupal-page-views">Page Views</NavItem>
                    <NavItem eventKey="drupal-unique-page-views">Unique Page Views</NavItem>
                    <NavItem eventKey="drupal-type-users">Types of Users</NavItem>
                    <NavItem eventKey="drupal-geographics">Geographics</NavItem>
                  </Nav>
                </Panel>
                : ' ' }
              { props.tab.data.hasOwnProperty('filedownloads') ?
                <Panel
                  header={props.tab.name.includes('Data Download') ? 'CompTox Data FTP Downloads' : props.tab.name + " FTP Data Downloads"}
                  eventKey="3">
                  <Nav bsStyle="pills" stacked>
                    <NavItem eventKey="ftp-stats">Download Counts</NavItem>
                    <NavItem eventKey="ftp-geographics">Geographics</NavItem>
                    <NavItem eventKey="ftp-type-users">Users</NavItem>
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
            { props.tab.data.hasOwnProperty('usage') ? <UsagePaneView props={props}/> : ' ' }
            { props.tab.data.hasOwnProperty('datadownloads') ? <DataDownlodsWebsitePaneView props={props}/> : ' ' }
            { props.tab.data.hasOwnProperty('filedownloads') ? <FtpDownloadsPaneView props={props}/> : ' ' }
            {/*<Tab.Content unmountOnExit={true} mountOnEnter={true} animation>*/}
            {/*<Tab.Pane unmountOnExit={true} mountOnEnter={true} eventKey="analog">*/}
            {/*<ActorAnalog />*/}
            {/*</Tab.Pane>*/}
            {/*</Tab.Content>*/}
          </Col>
        </Row>
      </Tab.Container>
    )
  }
}

Tabcontent.propTypes = {
    props: PropTypes.object
}

export default Tabcontent;