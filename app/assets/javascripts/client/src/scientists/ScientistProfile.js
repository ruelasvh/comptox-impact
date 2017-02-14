/**
 * Created by Victor H. Ruelas-Rivera on 2/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { Grid, Row, Col, Image, Breadcrumb } from 'react-bootstrap';
import { Link } from 'react-router';

// http client
import Client from '../utils/Client';
import ScientistProfileLinks from './ScientistProfileLinks';
import ScientistProfileBio from './ScientistProfileBio';
import ScientistProfileTabs from './ScientistProfileTabs';
import './scientistprofile.css';

class ScientistProfile extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            scientistDetails: []
        };

        // Bind functions
        this.handleFetchScientist = this.handleFetchScientist.bind(this);
        this.handleCancelScientist = this.handleCancelScientist.bind(this);
    }

    handleFetchScientist() {
        const scientistId = this.props.params.scientistId;

        Client.searchScientist(scientistId, (scientistDetails) => {
            this.setState({ scientistDetails: scientistDetails },
                () => console.log(this.state.scientistDetails));
        });
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

        return (
            <div className="scientist-container">
                <Grid>
                    {/*<Link*/}
                        {/*to="/" style={{textDecoration: 'underline'}}>Home*/}
                    {/*</Link> /*/}
                    {/*<Link*/}
                        {/*to="/scientists"*/}
                        {/*style={{textDecoration: 'underline'}}> Scientists*/}
                    {/*</Link> / {scientistDetails.firstName + ' ' + scientistDetails.lastName}*/}
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
                                        <h2><strong>{scientistDetails.firstName + ' ' + scientistDetails.lastName}</strong></h2>
                                        <h4 style={{color: 'grey'}}>{scientistDetails.title}</h4>
                                        <a href="#mailto">{scientistDetails.email}</a>
                                        <br/><br/><br/>
                                        <Image
                                            className="scientist-photo"
                                            src={scientistDetails.photoUrl ? require('./img/' + scientistDetails.photoUrl) : ''}
                                            thumbnail/>
                                    </Row>
                                    <Row>
                                        <ScientistProfileLinks
                                            scientistDetails={scientistDetails}
                                            linkIdPrefix="scientist-profile-links"/>
                                    </Row>
                                </Col>
                                <Col md={9}>
                                    <ScientistProfileBio scientistDetails={scientistDetails}/>
                                </Col>
                            </Row>
                            <br/><br/><br/>
                            <Row>
                                <ScientistProfileTabs/>
                            </Row>
                        </Grid>
                    </div>
                </Grid>
            </div>
        );
    }
}

export default ScientistProfile;