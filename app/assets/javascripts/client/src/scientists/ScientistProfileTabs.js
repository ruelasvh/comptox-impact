/**
 * Created by Victor H. Ruelas-Rivera on 2/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { Tabs, Tab } from 'react-bootstrap';

class ScientistProfileTabs extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            key: 1
        };

        // Bind functions
        this.handleSelect = this.handleSelect.bind(this);
    }

    handleSelect( key ) {
        this.setState({ key: key });
    }

    render() {
        return (
            <Tabs activeKey={this.state.key} onSelect={this.handleSelect} id="controlled-tabs">
                <Tab eventKey={1} title="Publications">Publications content</Tab>
                <Tab eventKey={2} title="Presentations">Presentations content</Tab>
                <Tab eventKey={3} title="Linked Profiles">Linked Profiles content</Tab>
                <Tab eventKey={4} title="Projects">Projects content</Tab>
            </Tabs>
        );
    }
}

export default ScientistProfileTabs;