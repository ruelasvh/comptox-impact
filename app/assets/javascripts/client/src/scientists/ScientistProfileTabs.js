/**
 * Created by Victor H. Ruelas-Rivera on 2/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Tabs, Tab, Row } from 'react-bootstrap';

// components
import PublicationItem from '../publications/PublicationItem';
import OrcidLink from './LinkedProfilesTabLink';
import PlumxLink from './LinkedProfilesTabLink';
import LinkedInLink from './LinkedProfilesTabLink';
import ResearchGateLink from './LinkedProfilesTabLink';
import GoogleScholarLink from './LinkedProfilesTabLink';
import SlideShare from './PresentationsTabPresentationItem';
import orcidThumbnail from './img/ocrid.gif';
import plumxThumbnail from './img/plumx.png';
import linkedinThumbnail from './img/linkedIn.png';
import researchgateThumbnail from './img/researchgate.png';
import googlescholarThumbnail from './img/googlescholar.png';

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
                                <PublicationItem publication={object} centerWide={false}/>
                            </div>
                        );
                    })}
                </div>
            );
        } else {
            publications = null;
        }

        const LinkedProfilesTabLinks = (
            <div>
                <OrcidLink
                    url={"http://orcid.org/" + this.props.scientistDetails.orcid}
                    title="ORCiD"
                    thumbnail={orcidThumbnail}
                    linkIdPrefix="linked-profile-tab-link-orcid"/>
                <br/>
                <PlumxLink
                    url={this.props.scientistDetails.plumx}
                    title="PlumX"
                    thumbnail={plumxThumbnail}
                    linkIdPrefix="linked-profile-tab-link-plumx"/>
                <br/>
                <LinkedInLink
                    url={this.props.scientistDetails.linkedIn}
                    title="LinkedIn"
                    thumbnail={linkedinThumbnail}
                    linkIdPrefix="linked-profile-tab-link-linkedIn"/>
                <br/>
                <ResearchGateLink
                    url={this.props.scientistDetails.researchGate}
                    title="ResearchGate"
                    thumbnail={researchgateThumbnail}
                    linkIdPrefix="linked-profile-tab-link-researchGate"/>
                <br/>
                <GoogleScholarLink
                    url={this.props.scientistDetails.googleScholar}
                    title="Google Scholar"
                    thumbnail={googlescholarThumbnail}
                    linkIdPrefix="linked-profile-tab-link-googleScholar"/>
            </div>
        );

        return (
            <Tabs activeKey={this.state.key} onSelect={this.handleSelect} id="controlled-tabs">
                <Tab eventKey={1} title="Publications">
                    <div className="tab-frame">
                        {publications}
                    </div>
                </Tab>
                <Tab eventKey={2} title="Presentations">
                    <div className="tab-frame">
                        <SlideShare userUrl="empty for now"/>
                    </div>
                </Tab>
                <Tab eventKey={3} title="Linked Profiles">
                    <div className="tab-frame">
                        {LinkedProfilesTabLinks}
                    </div>
                </Tab>
                <Tab eventKey={4} title="Projects">
                    <div className="tab-frame">
                        Projects content
                    </div>
                </Tab>
            </Tabs>
        );
    }
}

ScientistProfileTabs.propTypes = {
    publicationsData: PropTypes.array.isRequired,
    scientistDetails: PropTypes.object.isRequired
};

export default ScientistProfileTabs;