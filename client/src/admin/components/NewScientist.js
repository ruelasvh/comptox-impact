/**
 * Created by Victor H. Ruelas-Rivera on 6/13/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { withRouter } from 'react-router';
import { ButtonToolbar, Button, PageHeader, Grid, Col, Form, FormGroup, FormControl, ControlLabel } from 'react-bootstrap';
import $ from 'jquery';
import fetch from 'isomorphic-fetch';
import '../styles/newscientist.css';

class NewScientist extends React.Component {
    constructor(props) {
        super(props);
        // Bind function to get refs from FromControl
        this.handleFormSubmit = this.handleFormSubmit.bind(this);
    }

    handleFormSubmit() {
        var firstName = this.inputFirstName.value;
        var lastName = this.inputLastName.value;

        // var payload = { firstName: firstName, lastName: lastName };
        // var data = new FormData();
        // data.append("json", JSON.stringify(payload));
        //
        // fetch("/api/scientists",
        //     {
        //         method: 'POST',
        //         body: data
        //     })
        //     .then(response => response.json())
        //     .then(data => alert( JSON.stringify(data)))

        $.ajax({
            url: '/api/scientists',
            type: 'POST',
            data: { scientist: { firstName: firstName, lastName: lastName }},
            success: (scientist) => {
                // Clear the input fields
                this.inputFirstName.value = "";
                this.inputLastName.value = "";
                // alert('Succesfully Added New Record')
                // Redirect to profile
                this.props.router.replace(`/admin/scientists/${scientist.scientistId}`)
            }
        });


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
        console.log('props', this.props);
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

export default withRouter(NewScientist);