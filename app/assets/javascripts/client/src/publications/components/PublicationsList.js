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

        const publicationsArr = Object.keys(this.props.publications).map(key => this.props.publications[key]);

        this.state = {
            activePage: 1,
            publications: publicationsArr,
            currentlyDisplayed: publicationsArr
        };

        //Bindings
        this.handleSelectPage = this.handleSelectPage.bind(this);
    }

    // To be used with the Pagination widget.
    handleSelectPage(eventKey) {
        this.setState({
            activePage: eventKey
        });
    }

    render() {
            const Publications = (
                <div>
                    {this.state.publications.map(function (publication) {
                        return (
                            <PublicationItem
                                id={publication.publication_id.toString()}
                                key={publication.publication_id}
                                publication={publication}
                                centerWide={true} />
                        );
                    })}
                </div>
            );


        return (
            <div className="publications-container">
                <Grid>
                    <Row bsClass="with-underheader-1">
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
                                        <FormControl type="text" placeholder="Authors, Publication Name, DOI" />
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
                        {Publications}
                    </div>

                    <div className="publications-pagination">
                        <Pagination
                            prev
                            next
                            ellipsis
                            boundaryLinks
                            items={20}
                            maxButtons={5}
                            activePage={this.state.activePage}
                            onSelect={this.handleSelectPage} />
                    </div>
                </Grid>
            </div>
        );
    }

}

PublicationsList.propTypes = {
    publications: PropTypes.object.isRequired
};


export default PublicationsList;