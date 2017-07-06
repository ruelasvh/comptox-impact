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

        const expertiseMarkup = `<span id=\"bio-aoe\">Area of Expertise:</span><p></p></br>`
        const educationMarkup = `<span id=\"bio-edu\">Education:</span><p><ul></ul></p></br>`
        const experienceMarkup = `<span id=\"bio-pe\">Professional Experience:</span><p><ul></ul></p>`


        this.state = {
            isEditing: false,
            educationListFrom: [],
            experienceListForm: [],
            bio: {
                area_expertise: "",
                education: [],
                experience: []
            },
            bioHtmlString: this.props.details.bio ? this.props.details.bio : expertiseMarkup+educationMarkup+experienceMarkup
        }

        this.handleEdit = this.handleEdit.bind(this)
        this.handleAddEducationItem = this.handleAddEducationItem.bind(this)
        this.handleAddExperienceItem = this.handleAddExperienceItem.bind(this)
    }

    handleEdit() {
        // Parse bio html string to be used in the form
        if (!this.state.isEditing) {
            let bio = this.state.bio
            let bio_element = document.createElement( 'html' )
            bio_element.innerHTML = this.state.bioHtmlString
            bio.area_expertise = bio_element.getElementsByTagName( 'p' )[0].textContent
            let education = []
            let experience = []
            Array.prototype.forEach.call(bio_element.getElementsByTagName( 'ul' )[0].children, function (child) {
                education.push(child.textContent)
            })
            bio.education = education
            Array.prototype.forEach.call(bio_element.getElementsByTagName( 'ul' )[1].children, function (child) {
                experience.push(child.textContent)
            })
            bio.experience = experience

            const educationList = bio.education.map((item,index) => {
                return (
                    <p key={index}>
                        <FormControl
                            inputRef={ref => { this["inputEducation"+index] = ref }}
                            type="text"
                            defaultValue={item}/>
                    </p>
                )
            })
            const experienceList = bio.experience.map((item,index) => {
                return (
                    <p key={index}>
                        <FormControl
                            inputRef={ref => { this["inputExperience"+index] = ref }}
                            type="text"
                            defaultValue={item}/>
                    </p>
                )
            })
            this.setState({
                bio: bio,
                educationListFrom: educationList,
                experienceListForm: experienceList
            })
        }
        // Save updated information, convert to html string and update database
        if (this.state.isEditing) {
            let updateBio = Object.assign({}, this.state.bio, {
                area_expertise: this.inputAreaExpertise.value,
                education: this.state.educationListFrom.map((item,index) => {return this["inputEducation"+index].value}),
                experience: this.state.experienceListForm.map((item,index) => {return this["inputExperience"+index].value})
            })

            const expertiseMarkup = `<span id=\"bio-aoe\">Area of Expertise:</span><p>${updateBio.area_expertise}</p></br>`
            const educationMarkup = `<span id=\"bio-edu\">Education:</span><p><ul>${updateBio.education.map(item => { return `<li>${item}</li>` }).join('')}</ul></p></br>`
            const experienceMarkup = `<span id=\"bio-pe\">Professional Experience:</span><p><ul>${updateBio.experience.map(item => { return `<li>${item}</li>` }).join('')}</ul></p>`

            let updatedDetails = Object.assign({}, this.props.details, {
                bio: (expertiseMarkup + educationMarkup + experienceMarkup)
            })

            this.props.updateDetails(updatedDetails);
            this.setState({ bioHtmlString: (expertiseMarkup + educationMarkup + experienceMarkup) })
        }

        this.setState({ isEditing: !this.state.isEditing })
    }

    handleAddEducationItem() {
        const educationList = this.state.educationListFrom
        this.setState({
            educationListFrom: educationList.concat(<p key={educationList.length}><FormControl inputRef={ref => { this["inputEducation"+educationList.length] = ref }} type="text"/></p>)
        })
    }

    handleAddExperienceItem() {
        const experienceList = this.state.experienceListForm
        this.setState({
            experienceListForm: experienceList.concat(<p key={experienceList.length}><FormControl inputRef={ref => { this["inputExperience"+experienceList.length] = ref }} type="text"/></p>)
        })
    }

    render() {

        const BioForm = () => (
            <form>
                <FormGroup controlId="formScientistBioExpertise">
                    <ControlLabel>Enter Area of Expertise</ControlLabel>
                    <FormControl
                        inputRef={ref => { this.inputAreaExpertise = ref }}
                        componentClass="textarea"
                        placeholder="Enter Area of Expertise"
                        defaultValue={this.state.bio.area_expertise}/>
                </FormGroup>
                <br/>
                <FormGroup controlId="formScientistBioEducation">
                    <ControlLabel>Enter Education</ControlLabel>
                    <br/>
                    {this.state.educationListFrom}
                    <div style={{ float: 'right' }}>
                        <Button bsStyle="link" onClick={this.handleAddEducationItem}>
                            <p><Glyphicon glyph="plus"/> Add</p>
                        </Button>
                    </div>
                    <br/>
                    <ControlLabel>Enter Professional Experience</ControlLabel>
                    {this.state.experienceListForm}
                    <br/>
                    <div style={{ float: 'right' }}>
                        <Button bsStyle="link" onClick={this.handleAddExperienceItem}>
                            <p><Glyphicon glyph="plus"/> Add</p>
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
                    {this.state.isEditing ?  <BioForm/> : <div dangerouslySetInnerHTML={{__html: this.state.bioHtmlString}}/>}
                </Col>
            </div>
        )
    }
}

ScientistProfileBio.propTypes = {
    isEditable: PropTypes.bool,
    details: PropTypes.object
};

export default ScientistProfileBio;