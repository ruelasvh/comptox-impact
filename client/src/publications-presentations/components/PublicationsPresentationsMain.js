/**
 * Created by vruelasr on 6/29/17.
 */
import React from 'react'
import {Tabs, Tab, Grid, Row, Col, Nav, NavItem} from 'react-bootstrap'

import PresentationsPostersSubtabs from '../../presentations/components/PresentationPostersSubtabs'
import VisiblePublications from '../../publications/container/VisiblePublications'

class PublicationsPresentationsMain extends React.Component {
    constructor(props) {
        super(props);

        const publicationsTab = "publications-tab"
        const presentationsTab = "presentations-tab"

        this.state = {
            selectedTab: publicationsTab
        };

        // Bind functions
        this.handleSelectPubsPresTabs = this.handleSelectPubsPresTabs.bind(this)
    }

    handleSelectPubsPresTabs(key ) {
        this.setState({ selectedTab: key });
    }

    render() {
        const publicationsKey = "publications-tab"
        const presentationsKey = "presentations-tab"

        return (
            <div style={{paddingTop: '2%'}}>
                <Grid>
                    <Tab.Container defaultActiveKey={publicationsKey}  id="controlled-tabs-pubs-pres">
                        <Row className="clearfix">
                            <Col sm={12}>
                                <Nav bsStyle="tabs" bsClass="nav-short nav">
                                    <NavItem eventKey={publicationsKey}>
                                        Publications
                                    </NavItem>
                                    <NavItem eventKey={presentationsKey}>
                                        Presentations
                                    </NavItem>
                                </Nav>
                            </Col>
                            <Col sm={12}>
                                <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
                                    <Tab.Pane key={publicationsKey} eventKey={publicationsKey} mountOnEnter={true} unmountOnExit={true}>
                                        <div className="tab-frame" style={{marginBottom: '8em'}}>
                                            <VisiblePublications/>
                                        </div>
                                    </Tab.Pane>
                                    <Tab.Pane key={presentationsKey} eventKey={presentationsKey} mountOnEnter={true} unmountOnExit={true}>
                                        <div className="tab-frame">
                                            <PresentationsPostersSubtabs options={{filter: 'ALL'}}/>
                                        </div>
                                    </Tab.Pane>
                                </Tab.Content>
                            </Col>
                        </Row>
                    </Tab.Container>
                </Grid>
            </div>
        );
    }
}

export default PublicationsPresentationsMain