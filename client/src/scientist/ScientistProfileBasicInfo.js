/**
 * Created by vruelasr on 6/28/17.
 */
import React from 'react';
import PropTypes from 'prop-types';
import { Grid, Row, Col, Image, Breadcrumb, Button, FormControl, FormGroup, ControlLabel } from 'react-bootstrap';
import { Link } from 'react-router';
import $ from 'jquery';

import './styles/scientistprofile.css';


class ScientistProfileBasicInfo extends React.Component {
    constructor(props) {
        super(props)

        this.state = {
            isEditing: false
        }

        this.handleEdit = this.handleEdit.bind(this)
    }

    handleEdit() {
        if (this.state.isEditing) {

            let updatedDetails = Object.assign({}, this.props.details, {
                firstName: this.inputFirstName.value,
                lastName: this.inputLastName.value,
                title: this.inputTitle.value,
                email: this.inputEmail.value,
            })

            this.props.updateDetails(updatedDetails);
        }

        this.setState({ isEditing: !this.state.isEditing })
    }

    render() {
        return (
            <form>
                {this.props.isEditable ?
                    <Button bsStyle={this.state.isEditing ? "success" : "info"} onClick={this.handleEdit}>
                        {this.state.isEditing ? "Submit" : "Edit Section"}
                    </Button>
                    :
                    <div/>
                }
                {this.state.isEditing ?
                    <FormGroup controlId="formScientistName">
                        <ControlLabel>First and Last Name</ControlLabel>
                        <FormControl
                            inputRef={ref => { this.inputFirstName = ref }}
                            type="text"
                            defaultValue={this.props.details.firstName}
                            placeholder="Enter first name"/>
                        <FormControl
                            inputRef={ref => { this.inputLastName = ref }}
                            type="text"
                            defaultValue={this.props.details.lastName}
                            placeholder="Enter last name"/>
                    </FormGroup>
                    :
                    <h2><strong>{this.props.details.firstName + ' ' + this.props.details.lastName}</strong></h2>
                }
                {this.state.isEditing ?
                    <FormGroup controlId="formScientistTitle">
                        <ControlLabel>Title</ControlLabel>
                        <FormControl
                            inputRef={ref => { this.inputTitle = ref }}
                            type="text"
                            defaultValue={this.props.details.title}
                            placeHolder="Enter title"/>
                    </FormGroup>
                    :
                    <h4 style={{color: 'grey'}}>{this.props.details.title}</h4>
                }
                {this.state.isEditing ?
                    <FormGroup controlId="formScientistEmail">
                        <ControlLabel>Email</ControlLabel>
                        <FormControl
                            inputRef={ref => { this.inputEmail = ref }}
                            type="text"
                            defaultValue={this.props.details.email}
                            placeHolder="Enter email"/>
                    </FormGroup>
                    :
                    <a href="#mailto">{this.props.details.email}</a>
                }
            </form>
        )
    }

}

ScientistProfileBasicInfo.propTypes = {
    isEditable: PropTypes.bool,
    details: PropTypes.object
}

export default ScientistProfileBasicInfo;