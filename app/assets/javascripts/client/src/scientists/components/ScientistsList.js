/**
 * Created by Victor H. Ruelas-Rivera on 2/1/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Button, Pager, Glyphicon, Thumbnail, Grid, Breadcrumb, FormGroup, InputGroup, FormControl } from 'react-bootstrap';
import { Link } from 'react-router';
import Isotope from 'isotope-layout';

// components
import Scientist from './ScientistsListItem';
import '../styles/scientistsindex.css';


class ScientistsIndex extends React.Component {
    constructor(props) {
        super(props);

        // Convert to array
        const scientistsArr = Object.keys(this.props.scientists).map(key => this.props.scientists[key]);

        this.state = {
            isotope: null,
            sortValue: true,
            scientists: scientistsArr,
            currentlyDisplayed: scientistsArr,
            searchTerm: ''
        };

        // Bind event handlers
        this.handleClickSort = this.handleClickSort.bind(this);
        this.handleInputChange = this.handleInputChange.bind(this);
        this.handleIsotope = this.handleIsotope.bind(this);
    }

    handleClickSort() {
        this.setState({ sortValue: !this.state.sortValue });
    }

    handleInputChange(event) {
        let newlyDisplayed = this.state.scientists.filter(
            (scientist) => {
                return (
                    scientist.firstName.toLowerCase().includes(event.target.value.toLowerCase()) ||
                    scientist.lastName.toLowerCase().includes(event.target.value.toLowerCase())
                    )
            }
            );

        this.setState({
            searchTerm: event.target.value,
            currentlyDisplayed: newlyDisplayed
        }, this.handleIsotope);
    }

    // Setup Isotope
    handleIsotope() {
        const grid = document.querySelector('.scientists-grid');
        this.setState({
            isotope: new Isotope( grid, {
                itemSelector: '.scientists-grid-item',
                layoutMode: 'masonry',
                masonry: {
                    columnWidth: 228
                },
                getSortData: {
                    name: '.last-name'

                }
            })
        });
    }

    componentDidMount() {
        this.handleIsotope();
    }


    render() {
        // Sorting icon
        const sortGlyph = !this.state.sortValue ? 'glyphicon glyphicon-sort-by-alphabet' : 'glyphicon glyphicon-sort-by-alphabet-alt';

        // List of scientists
        const ScientistsList = this.state.currentlyDisplayed.map(scientist => (
                        <div className="scientists-grid-item" key={scientist.scientistId}>
                            <Scientist scientist={scientist}/>
                        </div>
            ));

        return (
            <div className="scientists-container">
                <Grid>
                    <Breadcrumb>
                        <Breadcrumb.Item>
                            <Link to="/">Home</Link>
                        </Breadcrumb.Item>
                        <Breadcrumb.Item active>
                            Scientists
                        </Breadcrumb.Item>
                    </Breadcrumb>
                    <div className="scientists-controls-container">
                        <Button
                            bsStyle="primary"
                            bsClass="scientists-sort-button-style"
                            onClick={this.handleClickSort}>
                            <Glyphicon glyph={sortGlyph} /> Sort By Last Name
                        </Button>
                        <div className="scientists-search-form-style">
                            <FormGroup>
                                <InputGroup>
                                    <InputGroup.Addon>
                                        <Glyphicon glyph="glyphicon glyphicon-search"/>
                                    </InputGroup.Addon>
                                    <FormControl
                                        type="text"
                                        placeholder="Search Scientists"
                                        onChange={this.handleInputChange}/>
                                </InputGroup>
                            </FormGroup>
                        </div>
                    </div>

                    <div className="scientists-grid">
                        {ScientistsList}
                    </div>
                </Grid>
            </div>
        );
    }

    // When the DOM is rendered, let Isotope know what's changed
    componentDidUpdate() {
        if (this.state.isotope) {
            this.state.isotope.arrange(
                { sortBy: 'name', sortAscending: this.state.sortValue }
            );
        }

    }
}

export default ScientistsIndex;