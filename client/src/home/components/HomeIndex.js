/**
 * Created by Victor H. Ruelas-Rivera on 2/10/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { connect } from 'react-redux';
import { Grid, Row, Col, Thumbnail} from 'react-bootstrap';
import { Link } from 'react-router';
import { fetchHomeDataIfNeeded } from '../actions';
import scientists from '../img/NCCT_Staff.jpg';
import publications from '../img/Publications.jpg';
import data_tools from '../img/Data_Tools.jpg';
import impact from '../img/Impact.jpg';
import '../styles/homeindex.css';

export class HomeIndex extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        const { dispatch } = this.props;
        dispatch(fetchHomeDataIfNeeded());
    }

    render() {
        const { homeData } = this.props;
        return (
            <div className="LandingMain-container">
                <Grid>
                    <Row>
                        <Col>
                            {/*<h1 style={{textAlign: 'center'}}>EPA Computational Toxicology Impact</h1>*/}
                            <h1 style={{textAlign: 'center'}}>{homeData.title}</h1>
                        </Col>
                    </Row>

                    <div className="LandingMain-header-text-space"></div>

                    <Row>
                        <Col>
                            <p style={{fontSize: 'large', textAlign: 'justify'}}>{homeData.intro}</p>
                        </Col>
                    </Row>

                    <div className="LandingMain-text-button-space"></div>

                    <div className="LandingMain-button-text">
                        <Row>
                            <Col xs={12} md={3}>
                                <Link to="/scientists">
                                    <Thumbnail src={scientists} alt="NCCT_Staff">
                                        <h3>Scientists <p><br/></p></h3>
                                    </Thumbnail>
                                </Link>
                            </Col>
                            <Col xs={12} md={3}>
                                <Link to="/publications-presentations">
                                    <Thumbnail src={publications} alt="Publications_Presentations">
                                        <h3>Publications and Presentations</h3>
                                    </Thumbnail>
                                </Link>
                            </Col>
                            <Col xs={12} md={3}>
                                <Link to="/data-tools">
                                    <Thumbnail src={data_tools} alt="Data_Tools">
                                        <h3>Data and Tools <p><br/></p></h3>
                                    </Thumbnail>
                                </Link>
                            </Col>
                            <Col xs={12} md={3}>
                                <Link to="/impact">
                                    <Thumbnail src={impact} alt="Impact">
                                        <h3>Impact <p><br/></p></h3>
                                    </Thumbnail>
                                </Link>
                            </Col>
                        </Row>
                    </div>
                </Grid>
            </div>
        )
    }
}

HomeIndex.propTypes = {};

function mapStateToProps(state) {
    const {
        isFetching,
        lastUpdated,
        homeData
    } = state.simpleHomeData || {
        isFetching: false,
        homeData: {}
    };
    return {
        isFetching,
        lastUpdated,
        homeData
    };
}

export default connect(mapStateToProps)(HomeIndex)