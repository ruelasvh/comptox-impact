/**
 * Created by Victor H. Ruelas-Rivera on 6/14/17.
 * US EPA National Center for Computational Toxicology
 */
/**
 * Created by Victor H. Ruelas-Rivera on 6/12/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import PropTypes from 'prop-types';
import { Button, PageHeader, Grid, Col, Row, FormGroup, InputGroup, FormControl, Glyphicon } from 'react-bootstrap';
import { withRouter } from 'react-router';
import $ from 'jquery';
import AllScientists from './AllScientists';
import { searchScientists } from '../../utils/Client';
import '../styles/allscientists.css'

class Main extends React.Component {
    constructor(props) {
        super(props);

        // Component's state
        this.state = {
            scientists: [],
            currentlyDisplayed: [],
            isLoading: true,
            searchTerm: ''
        };

        // Bindings
        this.removeScientist = this.removeScientist.bind(this);
        this.handleDelete = this.handleDelete.bind(this);
        this.handleCreate = this.handleCreate.bind(this);
        this.handleInputChange = this.handleInputChange.bind(this);
    }

    componentDidMount() {
        searchScientists((result) => this.setState({ scientists: result.data, currentlyDisplayed: result.data, isLoading: false }));
    }

    handleDelete(id) {
        $.ajax({
            url: `/api/scientists/${id}`,
            type: 'DELETE',
            success: (response) => {
                this.removeScientist(id);
            }
        });
    }

    removeScientist(id) {
        var newScientists = this.state.scientists.filter((scientist) => {
            return scientist.scientistId != id;
        });

        this.setState({ scientists: newScientists })
    }

    handleUpdate(scientist) {
        $.ajax({
            url: `/api/scientists/${scientist.scientistId}`,
            type: 'PUT',
            data: { scientist: scientist },
            success: (response) => {}
        })
    }

    handleCreate() {
        this.props.router.push("/admin/scientists/new");
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
        })
    }

    renderToolbar() {
        return (
            <Row>
                <Col xs={12} md={8}>
                    <div style={{width: 350, float: 'left'}}>
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
                    <div style={{float: 'left', paddingLeft: 10, paddingTop: 6}}><p style={{fontSize: 16}}>Showing {this.state.currentlyDisplayed.length} results</p></div>
                </Col>
                <Col xs={6} md={4}>
                    <div className="admin-list-toolbar-add-scientist">
                        <Button bsStyle="success" onClick={this.handleCreate}>Add Scientist</Button>
                    </div>
                </Col>
            </Row>
        )
    }

    render() {
        return (
            <Grid>
                {this.state.isLoading ? <div/> :
                    <div>
                        <PageHeader>NCCT Scientists and Postdocs</PageHeader>
                        {this.renderToolbar()}
                        <AllScientists scientists={this.state.currentlyDisplayed} handleDelete={this.handleDelete} handleUpdate={this.handleUpdate}/>
                    </div>
                }
            </Grid>
        )
    }
}

Main.propTypes = {
    router: PropTypes.object
}

export default withRouter(Main);