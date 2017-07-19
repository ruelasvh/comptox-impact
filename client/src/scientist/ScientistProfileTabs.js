/**
 * Created by Victor H. Ruelas-Rivera on 2/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import PropTypes from 'prop-types';
import { Tabs, Tab, Row } from 'react-bootstrap';

// components
import Link from './LinkedProfilesTabLink';
import { linkTypes } from './LinkedProfilesTabLink';
import Presentations from './PresentationsTabContent';
import Publications from './PublicationsTabContent';
import './styles/scientistprofile.css';

class ScientistProfileTabs extends React.Component {
    constructor(props) {
        super(props);

        const publicationsTab = 1;
        const presentationsTab = 2;
        const linkedProfilesTab = 3;
        const projectsTab = 4;

        this.state = {
            selectedTab: this.props.scientistData.publications.length === 0 ? linkedProfilesTab : publicationsTab
        };

        // Bind functions
        this.handleSelect = this.handleSelect.bind(this);
    }

    handleSelect( key ) {
        this.setState({ selectedTab: key });
    }

    render() {
        // Handle linked profiles
        const LinkedProfilesTabLinks = (
            <div>
                {this.props.scientistData.orcid ? <Link
                    url={"http://orcid.org/" + this.props.scientistData.orcid}
                    label={linkTypes.ORCID} /> : ''}
                {this.props.scientistData.plumx ? <Link
                    url={this.props.scientistData.plumx}
                    label={linkTypes.PLUMX}/> : ''}
                {this.props.scientistData.linkedIn ? <Link
                    url={this.props.scientistData.linkedIn}
                    label={linkTypes.LINKEDIN}/> : ''}
                {this.props.scientistData.researchGate ? <Link
                    url={this.props.scientistData.researchGate}
                    label={linkTypes.RESEARCHGATE}/> : ''}
                {this.props.scientistData.googleScholar ? <Link
                    url={this.props.scientistData.googleScholar}
                    label={linkTypes.GOOGLE_SCHOLAR}/> : ''}
                {this.props.scientistData.orcid ? <Link
                    url={`http://europepmc.org/authors/${this.props.scientistData.orcid}`}
                    label={linkTypes.EUROPE_PMC}/> : ''}
                {this.props.scientistData.vivo ? <Link
                    url={this.props.scientistData.vivo}
                    label={linkTypes.VIVO}/> : ''}
                {this.props.scientistData.publons ? <Link
                    url={this.props.scientistData.publons}
                    label={linkTypes.PUBLONS}/> : ''}
                {this.props.scientistData.microsoftAcademic ? <Link
                        url={this.props.scientistData.microsoftAcademic}
                        label={linkTypes.MICROSOFT_ACADEMIC}/> : ''}
            </div>
        );

        // Handle projects
        var projects = this.props.scientistData.publications.map((i) => i.project);
        // Remove duplicates and null values
        projects = projects.filter((el, index, inputArr) => inputArr.indexOf(el) === index && inputArr[index] !== null);
        const renderProjects = () => {
            return (
                <ul>
                    {projects.map(
                        function (p, i) {
                            return <li className="projects-tab-project-item" key={i}><strong>{p}</strong></li>
                        }
                    )}
                </ul>
            )
        };

        return (
            <Tabs activeKey={this.state.selectedTab} onSelect={this.handleSelect} id="controlled-tabs">
                <Tab eventKey={1} title="Publications" disabled={this.props.scientistData.publications.length === 0 ? true : false} mountOnEnter={true} unmountOnExit={true}>
                    <div className="tab-frame" style={{marginBottom: '8em'}}>
                        <Publications selectedPublications={this.props.scientistData.publications}/>
                    </div>
                </Tab>
                {/*<Tab eventKey={2} title="Presentations" disabled={this.props.scientistData.presentations === null ? true : false}>*/}
                <Tab eventKey={2} title="Presentations" disabled={false} mountOnEnter={true} unmountOnExit={true}>
                <div className="tab-frame">
                        <Presentations scientistName={this.props.scientistData.firstName + ' ' + this.props.scientistData.lastName} scientistId={this.props.scientistData.scientistId}/>
                    </div>
                </Tab>
                <Tab eventKey={3} title="Linked Profiles" mountOnEnter={true} unmountOnExit={true}>
                    <div className="tab-frame" style={{marginBottom: '8em'}}>
                        {LinkedProfilesTabLinks}
                    </div>
                </Tab>
                <Tab eventKey={4} title="Projects" disabled={projects.length === 0 ? true : false} mountOnEnter={true} unmountOnExit={true}>
                    <div className="tab-frame projects-tab">
                        {renderProjects()}
                    </div>
                </Tab>
            </Tabs>
        );
    }
}

ScientistProfileTabs.propTypes = {
    scientistData: PropTypes.object.isRequired
};

export default ScientistProfileTabs;