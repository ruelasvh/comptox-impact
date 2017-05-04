/**
 * Created by Victor H. Ruelas-Rivera on 3/29/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Grid, Row, Col, FormControl, InputGroup, FormGroup, Glyphicon, Pagination } from 'react-bootstrap';
import PublicationItem from './PublicationItem';
import Isotope from 'isotope-layout';
import '../styles/publications.css';

export class PublicationsList extends React.Component {
    constructor(props) {
        super(props);

        // Convert to array from nomalized state
        const publicationsArr = this.props.publications;

        this.state = {
            publications: publicationsArr,
            filteredPublications: publicationsArr,
            searchTerm: '',
            activePage: 1,
            publicationsPerPage: 10,
            savedPage: 1
        };

        //Bindings
        this.handleSelectPage = this.handleSelectPage.bind(this);
        this.handleInputChange = this.handleInputChange.bind(this);
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
        document.head.appendChild(plumxScript);
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
        document.head.appendChild(altMetricScript);
    }

    // To be used with the Pagination widget.
    handleSelectPage(eventKey) {
        this.setState({
            activePage: eventKey,
            savedPage: eventKey
        });
    }

    // Handle search bar input behaviour
    handleInputChange(event) {
        // Scroll up
        window.scrollTo(0,0);

        let newlyFiltered = this.state.publications.filter(
            (publication) => {
                return (
                    (publication.doi ? publication.doi.includes(event.target.value) : false) ||
                    (publication.citation ? publication.citation.toLowerCase().includes(event.target.value.toLowerCase()) : false)
                )
            }
        );

        this.setState({
            searchTerm: event.target.value,
            filteredPublications: newlyFiltered,
            activePage: 1
        });
    }

    componentDidMount() {
        this.appendPlumxScript();
        this.appendAltmetricScript();
    }

    componentDidUpdate() {
        this.appendPlumxScript();
        this.appendAltmetricScript();
    }

    render() {
        const { filteredPublications, activePage, searchTerm, savedPage, publicationsPerPage } = this.state;

        const currentPage = searchTerm == '' ? savedPage : activePage;

        // Logic for displaying current publications
        const indexOfLastPublication = currentPage * publicationsPerPage;
        const indexOfFistPublication = indexOfLastPublication - publicationsPerPage;
        const currentPublications = filteredPublications.slice(indexOfFistPublication, indexOfLastPublication);

        const renderPublications = currentPublications.map((publication) => {
            return (
                <PublicationItem
                    id={publication.publication_id.toString()}
                    key={publication.publication_id}
                    publication={publication}
                    centerWide={true} />
            )
        });

        return (
            <div>
                <div className="publications-container">
                    <Grid>
                    <Row>
                        <Col md={5}>
                            <h1>Publications</h1>
                        </Col>
                        <Col md={3}>
                            <div className="search-title" style={{paddingTop: '25px'}}>
                                <h4>Search NCCT Publications</h4>
                            </div>
                        </Col>
                        <Col md={4}>
                            <div className="search-box">
                                <FormGroup>
                                    <InputGroup>
                                        <InputGroup.Addon>
                                            <Glyphicon glyph="glyphicon glyphicon-search" />
                                        </InputGroup.Addon>
                                        <FormControl
                                            type="text"
                                            placeholder="Authors, Publication Title, DOI"
                                            onChange={this.handleInputChange} />
                                    </InputGroup>
                                </FormGroup>
                            </div>
                        </Col>
                    </Row>


                    {/**
                     * Load up the drowpdown menus
                     **/}
                    {/*<div style={{paddingBottom: '5px'}}>*/}
                        {/*<strong>Filter by:</strong>*/}
                    {/*</div>*/}
                    {/*<Row>*/}
                        {/*<Col md={3}>*/}
                            {/*<div id="publication-year-filter-title" className="publications-filter-title">*/}
                                {/*<h4>Published Year</h4>*/}
                            {/*</div>*/}
                            {/*<div className="section">*/}
                                {/*<Select*/}
                                    {/*multi={true}*/}
                                    {/*simpleValue={false}*/}
                                    {/*disabled={false}*/}
                                    {/*value={this.state.filterValuesYears}*/}
                                    {/*placeholder="2009 - 2016"*/}
                                    {/*options={this.state.optionsYears}*/}
                                    {/*onChange={this.handleSelectChangeYears} />*/}
                            {/*</div>*/}
                        {/*</Col>*/}
                        {/*<Col md={3}>*/}
                            {/*<div id="publication-project-filter-title" className="publications-filter-title">*/}
                                {/*<h4>Research Project</h4>*/}
                            {/*</div>*/}
                            {/*<div className="section">*/}
                                {/*<Select*/}
                                    {/*multi={true}*/}
                                    {/*simpleValue={false}*/}
                                    {/*disabled={false}*/}
                                    {/*value={this.state.filterValuesProjects}*/}
                                    {/*placeholder="e.g. Rapid Exposure and Dose"*/}
                                    {/*options={this.state.optionsProjects}*/}
                                    {/*onChange={this.handleSelectChangeProjects} />*/}
                            {/*</div>*/}
                        {/*</Col>*/}
                        {/*<Col md={3}>*/}
                            {/*<div id="publication-author-filter-title" className="publications-filter-title">*/}
                                {/*<h4>Author</h4>*/}
                            {/*</div>*/}
                            {/*<div className="section">*/}
                                {/*<Select*/}
                                    {/*multi={true}*/}
                                    {/*simpleValue={false}*/}
                                    {/*disabled={false}*/}
                                    {/*value={this.state.filterValuesAuthors}*/}
                                    {/*placeholder="e.g. Richard, A."*/}
                                    {/*options={this.state.optionsAuthors}*/}
                                    {/*onChange={this.handleSelectChangeAuthors} />*/}
                            {/*</div>*/}
                        {/*</Col>*/}
                    {/*</Row>*/}

                    {/**
                     * Spacing between filter dropdowns and publications.
                     **/}
                    <div style={{padding: '25px'}}/>

                    {/**
                     * Publications go start here.
                     **/}
                    <Row bsClass="with-underheader-2">
                        <Col md={7}>
                            <strong>Publications</strong>
                        </Col>
                        <Col md={2}>
                            <strong>Research Project</strong>
                        </Col>
                        <Col md={1}>
                            <strong>Altmetric</strong>
                        </Col>
                        <Col md={1}>
                            <strong>PlumX</strong>
                        </Col>
                        <Col md={1}>
                            <strong>Kudos</strong>
                        </Col>
                    </Row>


                    <div className="publications-item-grid">
                        {renderPublications}
                    </div>
                </Grid>
                </div>
                <div className="publications-pagination">
                    <Pagination
                        prev
                        next
                        first
                        last
                        ellipsis
                        boundaryLinks
                        items={Math.ceil(filteredPublications.length / publicationsPerPage)}
                        maxButtons={5}
                        activePage={currentPage}
                        onSelect={this.handleSelectPage} />
                </div>
            </div>
        );
    }

}

PublicationsList.propTypes = {
    publications: PropTypes.object.isRequired
};


export default PublicationsList;