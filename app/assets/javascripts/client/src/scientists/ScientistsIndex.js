/**
 * Created by Victor H. Ruelas-Rivera on 2/1/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Button, Glyphicon, Thumbnail, Grid } from 'react-bootstrap';
import Isotope from 'isotope-layout';
import Scientist from './ScientistsItem';
import './ScientistsIndex.css';

class ScientistsIndex extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            isotope: null,
            sortValue: true
        }
        // Bind event handlers
        this.handleClick = this.handleClick.bind(this);
        this.handleIsotope = this.handleIsotope.bind(this);
    }

    handleClick() {
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
                        columnWidth: 210
                    },
                    getSortData: {
                        // name: '[last-name]'
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

    componentDidMount() {
        this.handleIsotope();
    }

    render() {
        const scientists = this.props.scientists;
        const scientists_path = this.props.scientists_path;
        // Sorting icon
        const sortGlyph = !this.state.sortValue ? 'glyphicon glyphicon-sort-by-alphabet' : 'glyphicon glyphicon-sort-by-alphabet-alt';

        // List of scientists
        let ScientistsList;
        if (scientists) {
            ScientistsList = (
                scientists.map(function (scientist, i) {
                    return (
                        <div className="scientists-grid-item" key={"scientist-component-" + i}>
                            <Scientist scientist={scientist} scientists_path={scientists_path}/>
                        </div>
                    );
                })
            )
        } else {
            ScientistsList = null;
        }

        return (
            <div className="scientists-container">
                <div>
                    <Grid>
                        <a href="/" style={{textDecoration: 'underline'}}>Home</a> / Our Scientists
                        {/*<Link to="/" style={{textDecoration: 'underline'}}>Home</Link> / Our Scientists*/}
                    </Grid>
                </div>

                <div style={{paddingBottom: '20px'}}></div>

                <div className="scientists-header">
                    <Grid>
                        <h1 style={{fontWeight: '1000', verticalAlign: 'middle', lineHeight: '60px'}}>Our Scientists</h1>
                    </Grid>
                </div>

                <Grid>
                    <div className="scientists-sort-button" style={{paddingBottom: '10px'}}>
                        <h4>
                            <span style={{color: 'grey'}}></span><Button
                            bsStyle="primary"
                            onClick={this.handleClick}>
                            <Glyphicon glyph={sortGlyph} /> Sort By Last Name
                        </Button>
                        </h4>
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

ScientistsIndex.propTypes = {
    scientists: PropTypes.arrayOf(PropTypes.object.isRequired).isRequired,
    scientists_path: PropTypes.string.isRequired
};

export default ScientistsIndex;