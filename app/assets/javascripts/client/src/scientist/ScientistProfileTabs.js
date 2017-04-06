/**
 * Created by Victor H. Ruelas-Rivera on 2/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Tabs, Tab, Row } from 'react-bootstrap';

// components
import Link from './LinkedProfilesTabLink';
import { linkTypes } from './LinkedProfilesTabLink';
import SlideShare from './PresentationsTabContent';
import Publications from './PublicationsTabContent';

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
        const LinkedProfilesTabLinks = (
            <div>
                {this.props.scientistDetails.orcid ? <Link
                    url={"http://orcid.org/" + this.props.scientistDetails.orcid}
                    label={linkTypes.ORCID} /> : ''}
                {this.props.scientistDetails.plumx ? <Link
                    url={this.props.scientistDetails.plumx}
                    label={linkTypes.PLUMX}/> : ''}
                {this.props.scientistDetails.linkedIn ? <Link
                    url={this.props.scientistDetails.linkedIn}
                    label={linkTypes.LINKEDIN}/> : ''}
                {this.props.scientistDetails.researchGate ? <Link
                    url={this.props.scientistDetails.researchGate}
                    label={linkTypes.RESEARCHGATE}/> : ''}
                {this.props.scientistDetails.googleScholar ? <Link
                    url={this.props.scientistDetails.googleScholar}
                    label={linkTypes.GOOGLE_SCHOLAR}/> : ''}
                {this.props.scientistDetails.orcid ? <Link
                    url={`http://europepmc.org/authors/${this.props.scientistDetails.orcid}`}
                    label={linkTypes.EUROPE_PMC}/> : ''}
                {this.props.scientistDetails.vivo ? <Link
                    url={this.props.scientistDetails.vivo}
                    label={linkTypes.VIVO}/> : ''}
                {this.props.scientistDetails.publons ? <Link
                    url={this.props.scientistDetails.publons}
                    label={linkTypes.PUBLONS}/> : ''}
                {this.props.scientistDetails.microsoftAcademic ? <Link
                        url={this.props.scientistDetails.microsoftAcademic}
                        label={linkTypes.MICROSOFT_ACADEMIC}/> : ''}
            </div>
        );

        return (
            <Tabs activeKey={this.state.key} onSelect={this.handleSelect} id="controlled-tabs">
                <Tab eventKey={1} title="Publications" disabled={!(this.props.scientistDetails.other_details == "isPrincipalInvestigator")}>
                    <div className="tab-frame" style={{marginBottom: '8em'}}>
                        {/*{publications}*/}
                        <Publications/>
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