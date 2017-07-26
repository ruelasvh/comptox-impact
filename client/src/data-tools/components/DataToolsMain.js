/**
 * Created by Victor H. Ruelas-Rivera on 3/27/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { Grid, Row, Col, Nav, NavItem, Tab } from 'react-bootstrap';
import Subtab from './Subtab';
import '../styles/datatoolsmain.css';


class DataToolsIndex extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {
      const analytics = this.props.analytics;
      const tablist = [
        { name: 'CompTox Dashboard', eventKey: 'comptoxdashboard', data: analytics.comptoxdashboard, description: "The CompTox Dashboard contains information on over 700,000 chemicals currently in use. Users can access chemical structures, experimental, and predicted physiochemical and toxicity data, and additional links to relevant websites and applications." },
        { name: 'ACToR', eventKey: 'actor', data: analytics.actor, description: "The Aggregated Computational Toxicology Online Resource (ACToR) aggregates data from more than 1,000 public sources on over 500,000 chemicals and can be used to query a specific chemical and find all publicly available hazard, exposure, and risk assessment data." },
        { name: 'CPCat', eventKey: 'cpcat', data: analytics.cpcat, description: "CPCat (Chemical and Product Categories) is a database containing information mapping more than 43,000 chemicals to a set of terms categorizing their usage or function." },
        { name: 'EDSP21', eventKey: 'edsp21', data: analytics.edsp21, description: "The initiative, referred to as EDSP21 – or EDSP in the 21st century – aims to use computational or in silico models and molecular based in vitro high-throughput screening (HTS) assays to prioritize and screen chemicals to determine their potential to interact with the estrogen, androgen or thyroid (E, A, or T) bioactivity" },
        { name: 'ToxCast', eventKey: 'toxcast', data: analytics.toxcast, description: "The ToxCast Dashboard has data on over 9,000 chemicals and information from more than 1,000 high-throughput assay endpoint components. Users can explore the data from a chemical or an assay viewpoint." },
        { name: 'DSSTox', eventKey: 'dsstox', data: analytics.dsstox, description: "DSSTox provides a high quality public chemistry resource for supporting improved predictive toxicology. A distinguishing feature of this effort is the accurate mapping of bioassay and physicochemical property data associated with chemical substances to their corresponding chemical structures. " }
      ];

      const tabs = tablist.map((tab) => <NavItem key={tab.name} eventKey={tab.eventKey}>{tab.name}</NavItem>);
      const pages = tablist.map((tab) => <Tab.Pane unmountOnExit={true} mountOnEnter={true} key={tab.name} eventKey={tab.eventKey}><br/>{tab.description}<br/><br/><Subtab tab={tab} self={this.props.analytics}/></Tab.Pane>);

        const dataDomainTabInstance = (
            <Tab.Container defaultActiveKey="comptoxdashboard">
                <Row className="clearfix" >
                    <Col sm={12}>
                        <Nav bsStyle="tabs" bsClass="nav-short nav">
                          {tabs}
                        </Nav>
                    </Col>
                    <Col sm={12}>
                        <Tab.Content unmountOnExit={true} mountOnEnter={true} animation>
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
