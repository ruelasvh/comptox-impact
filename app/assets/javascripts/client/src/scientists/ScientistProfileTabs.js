/**
 * Created by Victor H. Ruelas-Rivera on 2/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { Tabs, Tab, Row } from 'react-bootstrap';

// components
import PublicationItem from '../publications/PublicationItemv3';

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

    appendPlumxScript() {
        if (document.getElementById('plumx-script')) {
            if (window.__plumX) {
                window.__plumX.widgets.popup.wireUp();
            }
            return;
        }
        const plumxScript = document.createElement("script");
        plumxScript.id = 'plumx-script';
        plumxScript.src = "//d39af2mgp1pqhg.cloudfront.net/widget-popup.js";
        plumxScript.async = true;
        document.body.appendChild(plumxScript);
    }

    appendAltmetricScript() {
        if (document.getElementById('altmetric-script')) {
            if (window._altmetric) {
                window._altmetric.embed_init();
            }
            return;
        }
        const altMetricScript = document.createElement("script");
        altMetricScript.id = 'altmetric-script';
        altMetricScript.src = "//d1bxh8uas1mnw7.cloudfront.net/assets/embed.js";
        altMetricScript.async = true;
        document.body.appendChild(altMetricScript);
    }

    componentDidMount() {
        this.appendPlumxScript();
        this.appendAltmetricScript();
    }

    render() {
        let publications;
        if (this.props.publicationsData) {
            publications = (
                <div>
                    {this.props.publicationsData.map(function (object, i) {
                        return (
                            <div id={i} key={'pub-item-' + i}>
                                <PublicationItem pub={object} centerWide={false}/>
                            </div>
                        );
                    })}
                </div>
            );
        } else {
            publications = null;
        }

        return (
            <Tabs activeKey={this.state.key} onSelect={this.handleSelect} id="controlled-tabs">
                <Tab eventKey={1} title="Publications">
                    <div style={{paddingTop: '2em', paddingBottom: '5em'}}>
                        {publications}
                    </div>
                </Tab>
                <Tab eventKey={2} title="Presentations">{console.log("presentations ", this.props.presentationsData)}</Tab>
                <Tab eventKey={3} title="Linked Profiles">Linked Profiles content</Tab>
                <Tab eventKey={4} title="Projects">Projects content</Tab>
            </Tabs>
        );
    }
}

export default ScientistProfileTabs;