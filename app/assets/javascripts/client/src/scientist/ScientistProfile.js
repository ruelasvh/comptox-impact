/**
 * Created by Victor H. Ruelas-Rivera on 2/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Grid, Row, Col, Image, Breadcrumb } from 'react-bootstrap';
import { Link } from 'react-router';

// http client
import Client from '../utils/Client';
// components
import ScientistProfileLinks from './ScientistProfileLinks';
import ScientistProfileBio from './ScientistProfileBio';
import ScientistProfileTabs from './ScientistProfileTabs';
import defaultScientistPhoto from '../../../../images/api/staff/person_thumbnail.jpg';
// styles
import './styles/scientistprofile.css';

class ScientistProfile extends React.Component {
    constructor(props) {
        super(props);

        let initialScientistDetails = {};
        if (this.props.location) {
            initialScientistDetails = this.props.location.state ?
                this.props.location.state.scientist : {};
        }

        this.state = {
            scientistDetails: initialScientistDetails,
        };

        // Bind functions
        this.handleFetchScientist = this.handleFetchScientist.bind(this);
        this.handleCancelScientist = this.handleCancelScientist.bind(this);
    }

    handleFetchScientist() {
        const scientistId = this.props.params.scientistId;
        // var photoURL = `/api/scientists/${scientistId}/photo/${scientistId}.jpg`;
        // if (process.env.NODE_ENV === "production") {
        //     photoURL = this.state.scientistDetails.photoUrl;
        // }

        Client.searchScientist(scientistId, (scientistDetails) => {
            this.setState({ scientistDetails: scientistDetails },
                () => console.log(this.state.scientistDetails))
        });
        //
        // Client.searchScientistPhoto(photoURL, (scientistPhotoURL) => {
        //     this.setState({ scientistPhoto: scientistPhotoURL },
        //         () => console.log(this.state.scientistPhoto))
        // })
    }

    handleCancelScientist() {
        this.setState({
            scientistDetails: []
        });
    }




    componentDidMount() {
        this.handleFetchScientist();
    }

    render() {
        let scientistDetails = this.state.scientistDetails;
        let scientistPhotoURL = "";
        if (process.env.NODE_ENV === "production") {
            scientistPhotoURL = this.state.scientistDetails.photoUrl ? this.state.scientistDetails.photoUrl : defaultScientistPhoto;
        } else {
            scientistPhotoURL = this.state.scientistDetails.photoUrl ? `/api/scientists/${scientistDetails.scientistId}/photo/${scientistDetails.scientistId}.jpg` : defaultScientistPhoto;
        }


        return (
            <div className="scientist-container">
                <Grid>
                    <Breadcrumb>
                        <Breadcrumb.Item>
                            <Link to="/">Home</Link>
                        </Breadcrumb.Item>
                        <Breadcrumb.Item>
                            <Link to="/scientists">Scientists</Link>
                        </Breadcrumb.Item>
                        <Breadcrumb.Item active>
                            {scientistDetails.firstName + ' ' + scientistDetails.lastName}
                        </Breadcrumb.Item>
                    </Breadcrumb>
                    <div className="scientist-grid">
                        <Grid>
                            <Row>
                                <Col md={3}>
                                    <Row>
                                        <br/>
                                        <h2><strong>{scientistDetails.firstName + ' ' + scientistDetails.lastName}</strong></h2>
                                        <h4 style={{color: 'grey'}}>{scientistDetails.title}</h4>
                                        <a href="#mailto">{scientistDetails.email}</a>
                                        <br/><br/>
                                        <Image
                                            className="scientist-photo"
                                            src={scientistPhotoURL}
                                            thumbnail/>
                                    </Row>
                                    <Row>
                                        <ScientistProfileLinks
                                            scientistDetails={scientistDetails}
                                            linkIdPrefix="scientist-profile-links"/>
                                    </Row>
                                </Col>
                                <Col md={9}>
                                    <ScientistProfileBio scientistBio={scientistDetails.bio}/>
                                </Col>
                            </Row>
                            <br/><br/><br/>
                            <Row>
                                <ScientistProfileTabs
                                    publicationsData={this.state.publications}
                                    scientistDetails={scientistDetails}/>
                            </Row>
                        </Grid>
                    </div>
                </Grid>
            </div>
        );
    }
}

ScientistProfile.propTypes = {
    params: PropTypes.object.isRequired
};

export default ScientistProfile;