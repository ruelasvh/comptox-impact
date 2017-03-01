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
import EuropePMCLink from './LinkedProfilesTabLink';
import VivoLink from './LinkedProfilesTabLink';
import PublonsLink from './LinkedProfilesTabLink';
import SlideShare from './PresentationsTabPresentationItem';
import orcidThumbnail from './img/ocrid.gif';
import plumxThumbnail from './img/plumx.png';
import linkedinThumbnail from './img/linkedIn.png';
import researchgateThumbnail from './img/researchgate.png';
import googlescholarThumbnail from './img/googlescholar.png';
import europepmcThumbnail from './img/europepmc.png';
import vivoThumbnail from './img/vivo.png';
import publonsThumbnail from './img/publons.png';

class ScientistProfileTabs extends React.Component {
    constructor(props) {
        super(props);

        const publicationsTab = 1;
        const presentationsTab = 2;
        const linkedProfilesTab = 3;
        const projectsTab = 4;

        const initialTabSelected = this.props.scientistDetails.other_details == "isPrincipalInvestigator" ?
            publicationsTab : linkedProfilesTab;

        this.state = {
            key: initialTabSelected
        };

        // Bind functions
        this.handleSelect = this.handleSelect.bind(this);
    }

    handleSelect( key ) {
        this.setState({ key: key });
    }

    render() {
        let publications;
        if (this.props.publicationsData) {
            publications = (
                <div>
                    {this.props.publicationsData.map(function (object, i) {
                        return (
                            <PublicationItem
                                id={'pub-item-' + i.toString()}
                                key={'pub-item-' + i.toString()}
                                publication={object} centerWide={false}/>
                        );
                    })}
                </div>
            );
        } else {
            publications = null;
        }

        const LinkedProfilesTabLinks = (
            <div>
                {this.props.scientistDetails.orcid ? <OrcidLink
                    url={"http://orcid.org/" + this.props.scientistDetails.orcid}
                    title="ORCiD"
                    thumbnail={orcidThumbnail}
                    linkIdPrefix="linked-profile-tab-link-orcid"/> : ''}
                {this.props.scientistDetails.plumx ? <PlumxLink
                    url={this.props.scientistDetails.plumx}
                    title="PlumX"
                    thumbnail={plumxThumbnail}
                    linkIdPrefix="linked-profile-tab-link-plumx"/> : ''}
                {this.props.scientistDetails.linkedIn ? <LinkedInLink
                    url={this.props.scientistDetails.linkedIn}
                    title="LinkedIn"
                    thumbnail={linkedinThumbnail}
                    linkIdPrefix="linked-profile-tab-link-linkedIn"/> : ''}
                {this.props.scientistDetails.researchGate ? <ResearchGateLink
                    url={this.props.scientistDetails.researchGate}
                    title="ResearchGate"
                    thumbnail={researchgateThumbnail}
                    linkIdPrefix="linked-profile-tab-link-researchGate"/> : ''}
                {this.props.scientistDetails.googleScholar ? <GoogleScholarLink
                    url={this.props.scientistDetails.googleScholar}
                    title="Google Scholar"
                    thumbnail={googlescholarThumbnail}
                    linkIdPrefix="linked-profile-tab-link-googleScholar"/> : ''}
                {this.props.scientistDetails.orcid ? <EuropePMCLink
                    url={`http://europepmc.org/authors/${this.props.scientistDetails.orcid}`}
                    title="PMC Europe"
                    thumbnail={europepmcThumbnail}
                    linkIdPrefix="linked-profile-tab-link-europepmc"/> : ''}
                {this.props.scientistDetails.vivo ? <VivoLink
                    url={this.props.scientistDetails.vivo}
                    title="VIVO"
                    thumbnail={vivoThumbnail}
                    linkIdPrefix="linked-profile-tab-link-vivo"/> : ''}
                {this.props.scientistDetails.publons ? <PublonsLink
                    url={this.props.scientistDetails.publons}
                    title="Publons"
                    thumbnail={publonsThumbnail}
                    linkIdPrefix="linked-profile-tab-link-publons"/> : ''}
            </div>
        );

        return (
            <Tabs activeKey={this.state.key} onSelect={this.handleSelect} id="controlled-tabs">
                <Tab eventKey={1} title="Publications" disabled={!(this.props.scientistDetails.other_details == "isPrincipalInvestigator")}>
                    <div className="tab-frame" style={{marginBottom: '8em'}}>
                        {publications}
                    </div>
                </Tab>
                <Tab eventKey={2} title="Presentations" disabled={!(this.props.scientistDetails.other_details == "isPrincipalInvestigator")}>
                    <div className="tab-frame">
                        <SlideShare userUrl="empty for now"/>
                    </div>
                </Tab>
                <Tab eventKey={3} title="Linked Profiles">
                    <div className="tab-frame" style={{marginBottom: '8em'}}>
                        {LinkedProfilesTabLinks}
                    </div>
                </Tab>
                <Tab eventKey={4} title="Projects" disabled={!(this.props.scientistDetails.other_details == "isPrincipalInvestigator")}>
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