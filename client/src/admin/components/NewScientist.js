/**
 * Created by Victor H. Ruelas-Rivera on 6/13/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import PropTypes from 'prop-types';
import { withRouter } from 'react-router';
import { navigate } from '../../utils/Router';
import { Button, PageHeader, Grid, Col, Form, FormGroup, FormControl, ControlLabel } from 'react-bootstrap';
import { createScientist } from '../../utils/Client';
import '../styles/newscientist.css';

class NewScientist extends React.Component {
    constructor(props) {
        super(props);
        // Bind function to get refs from FromControl
        this.handleFormSubmit = this.handleFormSubmit.bind(this);
    }

    handleFormSubmit() {
        var scientist = {
            firstName: this.inputFirstName.value,
            lastName: this.inputLastName.value
        };
        createScientist(scientist, (scientist) => {
            // Clear the input fields
            this.inputFirstName.value = "";
            this.inputLastName.value = "";
            // Redirect to profile
            navigate({
                path: `/admin/scientists/${scientist.scientistId}`,
                state: { scientist, isEditable: true },
                routerAction: this.props.router.replace
            })
        })
    }

    renderForm() {
        return (
            <div className="admin-new-scientist-form">
                <Form horizontal>
                    <FormGroup controlId="formNewScientistFirstName">
                        <Col componentClass={ControlLabel} sm={2}>
                            First Name
                        </Col>
                        <Col sm={8}>
                            <FormControl
                                inputRef={ref => { this.inputFirstName = ref }}
                                type="text"
                                placeholder="First Name" />
                        </Col>
                    </FormGroup>

                    <FormGroup controlId="formNewScientistLastName">
                        <Col componentClass={ControlLabel} sm={2}>
                            Last Name
                        </Col>
                        <Col sm={8}>
                            <FormControl
                                inputRef={ref => { this.inputLastName = ref }}
                                type="text"
                                placeholder="Last Name" />
                        </Col>
                    </FormGroup>

                    <FormGroup>
                        <Col smOffset={2} sm={10}>
                            <Button type="button" bsStyle="success" onClick={this.handleFormSubmit}>
                                Submit
                            </Button>
                            {' '}
                            <Button type="reset">Reset</Button>
                        </Col>
                    </FormGroup>
                </Form>
            </div>
        )
    }

    render() {
        return (
            <div className="admin-new-scientist-container">
                <Grid>
                    <PageHeader>New Scientist</PageHeader>
                    <br/>
                    {this.renderForm()}
                </Grid>
            </div>
        )
    }
}

NewScientist.propTypes = {
    router: PropTypes.object
}

export default withRouter(NewScientist);