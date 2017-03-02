/**
 * Created by Victor H. Ruelas-Rivera on 2/1/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Button, Pager, Glyphicon, Thumbnail, Grid, Breadcrumb } from 'react-bootstrap';
import { Link } from 'react-router';
import Isotope from 'isotope-layout';

// components
import Scientist from './ScientistsIndexItem';
import Loader from 'react-loader';
import './styles/scientistsindex.css';

// http client
import Client from '../utils/Client';

class ScientistsIndex extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            isotope: null,
            sortValue: true,
            scientists: [],
            loaded: false
        };

        // Bind event handlers
        this.handleClickSort = this.handleClickSort.bind(this);
        this.handleIsotope = this.handleIsotope.bind(this);
        this.handleSearchScientists = this.handleSearchScientists.bind(this);
        this.handleCancelScientists = this.handleCancelScientists.bind(this);
    }

    handleClickSort() {
        this.setState({ sortValue: !this.state.sortValue });
    }

    // Setup Isotope
    handleIsotope() {
        const grid = document.querySelector('.scientists-grid');
        if(!this.state.isotope) {
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
        } else {
            this.state.isotope.arrange(
                { sortBy: 'name', sortAscending: this.state.sortValue }
            );
        }
    }

    handleSearchScientists( isotopeSetupCallBack ) {
        Client.searchScientists( scientists => {
            // this.setState({ scientists: scientists }, isotopeSetupCallBack);
            // Changed to below code for logging data to the console
            this.setState({ scientists: scientists, loaded: true },
                () => {
                    console.log(this.state);
                    isotopeSetupCallBack();
                }
            );
        });
    }

    handleCancelScientists() {
        this.setState({
            scientists: []
        })
    }

    componentDidMount() {
        this.handleSearchScientists( this.handleIsotope );
    }

    render() {
        const scientists = this.state.scientists;
        // Sorting icon
        const sortGlyph = !this.state.sortValue ? 'glyphicon glyphicon-sort-by-alphabet' : 'glyphicon glyphicon-sort-by-alphabet-alt';

        // List of scientists
        let ScientistsList;
        if (scientists) {
            ScientistsList = (
                scientists.map(function (scientist, i) {
                    return (
                        <div className="scientists-grid-item" key={"scientist-component-" + i}>
                            <Scientist scientist={scientist}/>
                        </div>
                    );
                })
            )
        } else {
            ScientistsList = null;
        }

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
                    <div className="scientists-sort-button">
                        <Button
                            bsStyle="primary"
                            bsClass="scientists-sort-button-style"
                            onClick={this.handleClickSort}>
                            <Glyphicon glyph={sortGlyph} /> Sort By Last Name
                        </Button>
                    </div>

                    <div className="scientists-grid">
                        <Loader loaded={this.state.loaded} top="%100">
                            {ScientistsList}
                        </Loader>
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