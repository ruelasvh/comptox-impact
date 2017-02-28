/**
 * Created by Victor H. Ruelas-Rivera on 2/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Grid, Row, Col, Image, Breadcrumb } from 'react-bootstrap';
import { Link } from 'react-router';

// http client
import Client from '../utils/Client';
import ScientistProfileLinks from './ScientistProfileLinks';
import ScientistProfileBio from './ScientistProfileBio';
import ScientistProfileTabs from './ScientistProfileTabs';
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
            publications: dummyPublicationsData
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


    appendPlumxScript() {
        if (document.getElementById('plumx-script')) {
            console.log('Appended Plumx script 1st level');
            if (window.__plumX) {
                window.__plumX.widgets.popup.wireUp();
                console.log('Appended Plumx script 2nd level');
            }
            return;
        }
        const plumxScript = document.createElement("script");
        plumxScript.id = 'plumx-script';
        plumxScript.src = "//d39af2mgp1pqhg.cloudfront.net/widget-popup.js";
        plumxScript.async = true;
        document.head.appendChild(plumxScript);
    }

    appendAltmetricScript() {
        if (document.getElementById('altmetric-script')) {
            if (window._altmetric) {
                window._altmetric.embed_init();
            }
            return;
        }
        const altMetricScript = document.createElement("script");
        altMetricScript.id = 'altmetric-script';
        altMetricScript.src = "//d1bxh8uas1mnw7.cloudfront.net/assets/embed.js";
        altMetricScript.async = true;
        document.head.appendChild(altMetricScript);
    }

    componentDidMount() {
        // console.log('<ScientistProfile /> componentDidMount executed');
        this.appendPlumxScript();
        this.appendAltmetricScript();
        this.handleFetchScientist();
    }

    render() {
        let scientistDetails = this.state.scientistDetails;

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
                                            src={scientistDetails.photoUrl ? require('../scientists/img/' + scientistDetails.photoUrl) : ''}
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

// Remove when api is setup
const dummyPublicationsData = [{
    "doi":"10.1016/j.envint.2015.12.008",
    "publishedDate":"2016-01-25",
    "projectName": "Rapid Exposure and Dose",
    "projectLink":"<a href=\"https://www.epa.gov/comptox/expocast\" target=\"_blank\">Rapid Exposure and Dose</a>",
    "citation":"Rager, J.E., M. Strynar , S. Liang, R.L. McMahen, <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">A. Richard</a> , C.M. Grukle, <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">J. Wambaugh</a> , K. Isaacs , <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">R. Judson</a>, A. Williams , and J. Sobus. Linking high resolution mass spectrometry data with exposure and toxicity forecasts to advance high-throughput environmental monitoring.   ENVIRONMENT INTERNATIONAL. Elsevier Science Ltd, New York, NY, USA, 88: 269-280, (2016)."
},{
    "doi":"10.1080/1062936X.2016.1253611",
    "publishedDate":null,
    "projectName": "Sustainable Chemistry",
    "projectLink":"<a href=\"https://www.epa.gov/chemical-research/research-evaluating-risk-across-life-cycle-manufactured-chemicals-materials\" target=\"_blank\">Sustainable Chemistry</a>",
    "citation":"Mansouri, K., <a href=\"http://comptox.ag.epa.gov/impact/scientists/4\">C. Grulke</a>, <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">A. Richard</a>, <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">R. Judson</a>, and A. Williams. (SAR AND QSAR IN ENVIRONMENTAL RESEARCH) An automated curation procedure for addressing chemical errors and inconsistencies in public datasets used in QSAR modeling.   SAR AND QSAR IN ENVIRONMENTAL RESEARCH. Taylor &amp; Francis, Inc., Philadelphia, PA, USA,"
},{
    "doi":"10.1021/acs.chemrestox.6b00135",
    "publishedDate":"2016-07-07",
    "projectName": "High-throughput Tox Testing",
    "projectLink":"<a href=\"https://www.epa.gov/comptox/toxcast\" target=\"_blank\">High-throughput Tox Testing</a>",
    "citation":"<a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, A.</a>, <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">R. Judson</a>, <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">K. Houck</a>, <a href=\"http://comptox.ag.epa.gov/impact/scientists/4\">C. M. Grulke</a>, P. Volarath, I. Thillainadarajah, C. Yang, J. Rathman, <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">M. Martin</a>, <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">J. Wambaugh</a>, <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">T. Knudsen</a>, K. Mansouri, J. Kancherla, G. Tier, A. Williams, <a href=\"http://comptox.ag.epa.gov/impact/scientists/18\">S. Little</a>, <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">K. Crofton</a>, and <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">R. Thomas</a>. (Chemical Research in Toxicology) The ToxCast Chemical Landscape - Paving the Road to 21st Century Toxicology.   CHEMICAL RESEARCH IN TOXICOLOGY. American Chemical Society, Washington, DC, USA,  1-78, (2016)."
},{
    "doi":"10.1007/s00216-016-0139-z",
    "publishedDate":"2016-12-16",
    "projectName": null,
    "projectLink":null,
    "citation": "McEachran, A.D., Sobus, J.R. & Williams, A.J. Anal Bioanal Chem (2016). Identifying known unknowns using the US EPA’s CompTox Chemistry Dashboard. doi: 10.1007/s00216-016-0139-z."
}];