/**
 * Created by vruelasr on 8/22/17.
 */
import React, { Component } from 'react'
import {
  Grid, Row, Col, NavItem, Nav, Tab
} from 'react-bootstrap'
import './styles/impactmain.css'

class ImpactMainView extends Component {
  render() {
    const tablist = [
      {name: 'CompTox Research', eventKey: 'impact-comptox-research'},
      {name: 'News', eventKey: 'impact-news'},
      {name: 'Social Media', eventKey: 'impact-social-media'},
      {name: 'Policy Use', eventKey: 'impact-policy-use'},
      {name: 'Scientific Use', eventKey: 'impact-scientific-use'},
      {name: 'Collaborations', eventKey: 'impact-collaborations'}
    ]
    
    const tabs = tablist.map(tab => <NavItem key={tab.name} eventKey={tab.eventKey}>{tab.name}</NavItem>)
    
    return (
      <Grid className="impact-container">
        <h1>The Impact of CompTox Research & Tools</h1>
        <br/>
        <Tab.Container defaultActiveKey="impact-comptox-research">
          <Row className="clearfix">
            <Col sm={12}>
              <Nav bsStyle="tabs" bsClass="nav-short nav">
                {tabs}
              </Nav>
            </Col>
            <Col sm={12}>
              <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                {/* Pages will go here */}
              </Tab.Content>
            </Col>
          </Row>
        </Tab.Container>
      </Grid>
    )
  }
}

export default ImpactMainView