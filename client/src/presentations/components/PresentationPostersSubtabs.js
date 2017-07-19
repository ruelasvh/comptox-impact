/**
 * Created by vruelasr on 7/12/17.
 */
import React from 'react';
import {Nav, NavItem, Tab, Row, Col} from 'react-bootstrap'

import VisiblePresentations from '../containers/VisiblePresentations'
import VisiblePosters from '../containers/VisiblePosters'
import '../styles/presentations-poster-nav.css'

class PresentationPostersSubtabs extends React.Component {
    constructor(props) {
        super(props)
    }

    render() {
        const presentationsKey = 'presentations'
        const postersKey = 'posters'

        return (
            <Tab.Container id="presentations-posters-subtabs" defaultActiveKey={presentationsKey}>
                <Row className="clearfix">
                    <Col sm={12}>
                        <div className="selection-nav">
                            <Nav bsStyle="pills" justified>
                                <NavItem eventKey={presentationsKey}>
                                    Presentations
                                </NavItem>
                                <NavItem eventKey={postersKey}>
                                    Posters
                                </NavItem>
                            </Nav>
                        </div>
                    </Col>
                    <Col sm={12}>
                        <Tab.Content animation>
                            <Tab.Pane eventKey={presentationsKey} mountOnEnter={true} unmountOnExit={true}>
                                <div className="presentations-list-container">
                                    <VisiblePresentations options={this.props.options}/>
                                </div>
                            </Tab.Pane>
                            <Tab.Pane eventKey={postersKey} mountOnEnter={true} unmountOnExit={true}>
                                <div className="presentations-list-container">
                                    <VisiblePosters options={this.props.options}/>
                                </div>
                            </Tab.Pane>
                        </Tab.Content>
                    </Col>
                </Row>
            </Tab.Container>
        )
    }
}

export default PresentationPostersSubtabs;
