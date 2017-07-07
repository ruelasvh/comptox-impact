/**
 * Created by Victor H. Ruelas-Rivera on 2/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import PropTypes from 'prop-types';
import { Grid, Row, Col, Image } from 'react-bootstrap';
import { updateScientist, searchScientist } from '../utils/Client';
import Router from '../utils/Router';
// components
import ScientistProfileBasicInfo from './ScientistProfileBasicInfo';
import ScientistProfileLinks from './ScientistProfileLinks';
import ScientistProfileBio from './ScientistProfileBio';
import ScientistProfileTabs from './ScientistProfileTabs';
import NavBreadcrumb from './NavBreadcrumb';
// styles
import './styles/scientistprofile.css';

class ScientistProfile extends React.Component {
    constructor(props) {
        super(props);

        let scientistDetailsFromProps = {};
        let isLoading = true;
        let isEditable = false;

        if (this.props.location) {
            if (this.props.location.state) {
                scientistDetailsFromProps = this.props.location.state.scientist;
                isLoading = false;
                isEditable = this.props.location.state.isEditable
            }
        }

        this.state = {
            scientistDetails: scientistDetailsFromProps,
            isLoading: isLoading,
            isEditable: isEditable,
        };

        // Bind functions
        this.handleFetchScientist = this.handleFetchScientist.bind(this);
        this.handleCancelScientist = this.handleCancelScientist.bind(this);
        this.updateScientistDetails = this.updateScientistDetails.bind(this);
    }

    handleFetchScientist() {
        const scientistId = this.props.params.scientistId;
        searchScientist(scientistId, (scientist) => {
            this.setState({ scientistDetails: scientist.data, isLoading: false })
        });
    }

    handleCancelScientist() {
        this.setState({
            scientistDetails: {}
        });
    }

    componentDidMount() {
        // Fetch scientist details if state is empty
        if (Object.keys(this.state.scientistDetails).length === 0 && this.state.scientistDetails.constructor === Object) {
            this.handleFetchScientist();
        }
    }

    updateScientistDetails(scientistDetails) {
        updateScientist(scientistDetails, (updatedScientist) => {
            this.setState({ scientistDetails:  updatedScientist })
        })
    }

    render() {
        let scientistDetails = this.state.scientistDetails;
        let scientistPhotoURL = "";
        if (process.env.NODE_ENV === "production") {
            scientistPhotoURL = this.state.scientistDetails.photoUrl ?
                this.state.scientistDetails.photoUrl :
                `${Router.appPath()}/assets/api/staff/person_thumbnail.jpg`;
        } else {
            scientistPhotoURL = this.state.scientistDetails.photoUrl ?
                `${Router.appPath()}/assets/api/staff/${scientistDetails.scientistId}.jpg` :
                `${Router.appPath()}/assets/api/staff/person_thumbnail.jpg`;
        }


        return (
            <div className="scientist-container">
                {this.state.isLoading ? <div/> :
                    <Grid>
                        {this.state.isEditable ? ' ' : <NavBreadcrumb firstName={scientistDetails.firstName} lastName={scientistDetails.lastName}/>}
                        <div className="scientist-grid">
                            <Grid>
                                <Row>
                                    <Col md={3}>
                                        <Row>
                                            <br/>
                                            <ScientistProfileBasicInfo
                                                isEditable={this.state.isEditable}
                                                details={scientistDetails}
                                                updateDetails={this.updateScientistDetails}>
                                            </ScientistProfileBasicInfo>
                                            <br/>
                                            <Image
                                                className="scientist-photo"
                                                src={scientistPhotoURL}
                                                thumbnail>
                                            </Image>
                                        </Row>
                                        <Row>
                                            <ScientistProfileLinks
                                                scientistDetails={scientistDetails}
                                                linkIdPrefix="scientist-profile-links">
                                            </ScientistProfileLinks>
                                        </Row>
                                    </Col>
                                    <Col md={9}>
                                        <ScientistProfileBio
                                            isEditable={this.state.isEditable}
                                            details={scientistDetails}
                                            updateDetails={this.updateScientistDetails}>
                                        </ScientistProfileBio>
                                    </Col>
                                </Row>
                                <br/><br/><br/>
                                <Row>
                                    <ScientistProfileTabs scientistData={scientistDetails}/>
                                </Row>
                            </Grid>
                        </div>
                    </Grid>
                }
            </div>
        );
    }
}

ScientistProfile.propTypes = {
    params: PropTypes.object.isRequired
};

export default ScientistProfile;
