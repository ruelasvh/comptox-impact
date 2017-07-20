/**
 * Created by Victor H. Ruelas-Rivera on 3/29/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import PropTypes from 'prop-types';
import { Row, Col, FormControl, InputGroup, FormGroup, Glyphicon, Pagination, Button } from 'react-bootstrap';
import PublicationItem from './PublicationItem';
import Waypoint from 'react-waypoint';
import '../styles/publications.css';
import '../styles/intinite-scroll.css';

export class PublicationsList extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            publications: this.props.publications,
            filteredPublications: this.props.publications,
            searchTerm: '',
            searchTermValidation: null, // validation for search box
            activePage: 1, // pagination
            publicationsPerPage: 10, // pagination
            savedPage: 1, // pagination
            limit: 0, // infinite scroll
            isLoading: true // infinite scroll
        };

        //Bindings
        this.handleSelectPage = this.handleSelectPage.bind(this);
        this.handlePublicationsInfiniteScroll = this.handlePublicationsInfiniteScroll.bind(this);
        this.handleSearchSubmit = this.handleSearchSubmit.bind(this);

        //Define function to check empty objects
        Object.prototype.isEmpty = function () {
            for (var key in this) {
                if (this.hasOwnProperty(key))
                    return false;
            }
            return true;
        }
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
        // Scroll up
        window.scrollTo(0,0);
        this.setState({
            activePage: eventKey,
            savedPage: eventKey
        });
    }

    // To be used with infinite scroll
    handlePublicationsInfiniteScroll() {
        let step = 8;
        let currLimit = this.state.limit;

        this.setState({
            limit: currLimit + step,
            isLoading: false
        });
    }

    // To be used with infinite scroll
    renderWaypointInfiniteScroll() {
        return (
            <Waypoint
                onEnter={this.handlePublicationsInfiniteScroll}
            />
        )

    }

    renderPublicationsPaginated(publications) {
        return (
            <div>
                {publications.map((publication) => {
                    return (
                        <PublicationItem
                            id={publication.publication_id.toString()}
                            key={publication.publication_id}
                            publication={publication}
                            centerWide={true} />
                    )
                })}
            </div>
        )
    }

    renderPublicationsInfiniteScroll(publications, limit) {
        return (
            <div>
                {publications.slice(0, limit).map(function (publication) {
                    return (
                        <PublicationItem
                            id={publication.publication_id.toString()}
                            key={publication.publication_id}
                            publication={publication}
                            centerWide={true} />
                    );
                })}
            </div>
        )
    }

    handleSearchSubmit() {

        if (this.state.searchTermValidation === 'error') {
            this.searchBoxInput.value = "";
            this.setState({
                searchTermValidation: null
            });
            return;
        }

        // Reset publications if search box is cleared
        if (this.searchBoxInput.value === "") {
            this.setState({
                filteredPublications: this.state.publications,
                searchTermValidation: null
            });
            return;
        }

        let searchTerms = this.searchBoxInput.value.split(':').map(term => {
            return term.trim()
        });
        searchTerms.shift(); // Remove first empty string
        let filter = {};
        searchTerms.forEach(function(term, index, searchTerms) {
           if (term === 'author') {
               filter = Object.assign({}, filter, {
                   author: searchTerms[index + 1]
               })
           }
            if (term === 'year') {
                filter = Object.assign({}, filter, {
                    published_date: searchTerms[index + 1]
                })
            }
            if (term === 'project') {
                filter = Object.assign({}, filter, {
                    project: searchTerms[index + 1]
                })
            }
           if (term === 'doi') {
               filter = Object.assign({}, filter, {
                   doi: searchTerms[index + 1]
               })
           }
        })

        // Validate search terms
        if (filter.isEmpty()) {
            this.setState({
                searchTermValidation: 'error'
            })
            return;
        }

        let newlyFiltered = this.state.publications.filter(publication => {
            for (var key in filter) {
                if (publication[key] === undefined || publication[key] !== filter[key])
                    return false;
            }
            return true;
        })

        this.setState({
            searchTermValidation: null,
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
        // console.log('Props passed to PublicationsList', this.props)
        const { filteredPublications, activePage, searchTerm, savedPage, publicationsPerPage } = this.state;

        const currentPage = searchTerm == '' ? savedPage : activePage;

        // Logic for displaying current publications
        const indexOfLastPublication = currentPage * publicationsPerPage;
        const indexOfFistPublication = indexOfLastPublication - publicationsPerPage;
        const currentPublications = filteredPublications.slice(indexOfFistPublication, indexOfLastPublication);

        return (
            <div className={this.props.infiniteScroll ? 'infinite-scroll' : ''}>
                <div className={this.props.paginated ? 'publications-container' : ''}>
                    <Row>
                        <Col md={5}>
                            <div className="search-box">
                                <FormGroup controlId="formSearchPublications" validationState={this.state.searchTermValidation}>
                                    <InputGroup>
                                        <FormControl
                                            type="text"
                                            placeholder="Search by Author, Year, Project and DOI. e.g. :author: John Doe"
                                            //onChange={this.handleInputChange}
                                            inputRef={ref => { this.searchBoxInput = ref }}/>
                                        <InputGroup.Button>
                                            <Button
                                                bsStyle={this.state.searchTermValidation === 'error' ? "danger" : "primary"}
                                                onClick={this.handleSearchSubmit}>
                                                <Glyphicon
                                                    glyph={this.state.searchTermValidation === 'error' ?
                                                        "glyphicon glyphicon-remove" : "glyphicon glyphicon-search"} />
                                            </Button>
                                        </InputGroup.Button>
                                    </InputGroup>
                                    {
                                        this.state.searchTermValidation === 'error' ?
                                            <p className="search-instructions-wrap">The format is :author: John Doe :year: 2014 :project: Sustainable Chemistry :doi: 10.1002/ieam.1923</p> : ''
                                    }
                                </FormGroup>
                            </div>
                        </Col>
                        <Col md={3}>
                            <div className="results-wrap">
                                Showing {this.state.filteredPublications.length} {this.state.filteredPublications.length === 1 ? 'result' : 'results'}
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
                    {
                        this.props.paginated ?
                            <div className="publications-item-grid">
                                {this.renderPublicationsPaginated(currentPublications)}
                            </div>
                            : ''
                    }
                    {
                        this.props.infiniteScroll ?
                            this.renderPublicationsInfiniteScroll(this.state.filteredPublications, this.state.limit)
                            : ''
                    }

                </div>
                {
                    this.props.paginated ?
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
                        : ''
                }
                {
                    this.props.infiniteScroll ?
                        <div className="infinite-scroll__waypoint">
                            {this.state.limit < this.state.filteredPublications.length ? this.renderWaypointInfiniteScroll() : ' '}
                        </div>
                        : ''
                }
            </div>
        );
    }

}

PublicationsList.propTypes = {
    publications: PropTypes.oneOfType([
        PropTypes.object,
        PropTypes.array
    ]),
    onEnter: PropTypes.func, // function called when waypoint enters viewport
    onLeave: PropTypes.func, // function called when waypoint leaves viewport
};


export default PublicationsList;
