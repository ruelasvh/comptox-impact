/**
 * Created by Victor H. Ruelas-Rivera on 2/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import PropTypes from 'prop-types';
import { Col, Button, FormGroup, ControlLabel, FormControl, Glyphicon } from 'react-bootstrap';
import './styles/scientistprofile.css';


class ScientistProfileBio extends React.Component {
    constructor(props) {
        super(props)

        this.state = {
            educationList: [<p><FormControl type="text"/></p>],
            isEditing: false
        }

        this.handleEdit = this.handleEdit.bind(this)
        this.handleAddEducationItem = this.handleAddEducationItem.bind(this)
    }

    handleEdit() {
        this.setState({ isEditing: !this.state.isEditing })
    }

    handleAddEducationItem() {
        const educationList = this.state.educationList
        this.setState({
            educationList: educationList.concat(<p><FormControl type="text"/></p>)
        })
    }

    render() {

        const BioForm = () => (
            <form>
                <FormGroup controlId="formScientistBioExpertise">
                    <ControlLabel>Enter Area of Expertise</ControlLabel>
                    <FormControl componentClass="textarea"/>
                </FormGroup>
                <br/>
                <FormGroup controlId="formScientistBioEducation">
                    <ControlLabel>Enter Education</ControlLabel>
                    <br/>
                  {this.state.educationList}
                    <div style={{ float: 'right' }}>
                        <Button bsStyle="link" onClick={this.handleAddEducationItem}>
                            <p><Glyphicon glyph="plus"/> Add more</p>
                        </Button>
                    </div>
                </FormGroup>
            </form>
        )

        return (
            <div className="scientist-bio">
                <br/><br/><br/><br/><br/><br/><br/>
                <Col>
                    {
                        this.props.isEditable ?
                        <Button
                            bsStyle={this.state.isEditing ? "success" : "info"}
                            onClick={this.handleEdit}>{this.state.isEditing ? "Submit" : "Edit Section"}
                        </Button>
                        :
                        <div/>
                    }
                    <h4 className="headline"><strong>Bio</strong></h4>
                    {this.state.isEditing ?  <BioForm/> : <div dangerouslySetInnerHTML={{__html: this.props.scientistDetails.bio}}/>}
                </Col>
            </div>
        )
    }
}

ScientistProfileBio.propTypes = {
    isEditable: PropTypes.bool,
    scientistDetails: PropTypes.object
};

export default ScientistProfileBio;