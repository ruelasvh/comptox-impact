/**
 * Created by Victor H. Ruelas-Rivera on 2/10/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Grid, Row, Col, Thumbnail} from 'react-bootstrap';
import { Link } from 'react-router';

import Client from '../../../Client';
import scientists from '../img/NCCT_Staff.jpg';
import publications from '../img/Publications.jpg';
import data_tools from '../img/Data_Tools.jpg';
import impact from '../img/Impact.jpg';
import '../styles/HomeIndex.css';

export default class HomeIndex extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            data: []
        };

        this.handleFetchData = this.handleFetchData.bind(this);
        this.handleCancelData = this.handleCancelData.bind(this);
    }

    handleFetchData() {
        Client.search(data => {
            this.setState({
                data: data
            });
        });
    }

    handleCancelData() {
        this.setState({
            data: []
        });
    }

    componentDidMount() {
        this.handleFetchData();
    }

    render() {
        let data = this.state.data;
        console.log(data);

        return (
            <div className="LandingMain-container">
                <Grid>
                    <Row>
                        <Col>
                            {/*<h1 style={{textAlign: 'center'}}>EPA Computational Toxicology Impact</h1>*/}
                            <h1 style={{textAlign: 'center'}}>{data.title}</h1>
                        </Col>
                    </Row>

                    <div className="LandingMain-header-text-space"></div>

                    <Row>
                        <Col>
                            <p style={{fontSize: 'large', textAlign: 'justify'}}>{data.intro}</p>
                        </Col>
                    </Row>

                    <div className="LandingMain-text-button-space"></div>

                    <div className="LandingMain-button-text">
                        <Row>
                            <Col xs={12} md={3}>
                                <Link to="/scientists">
                                    <Thumbnail src={scientists} alt="NCCT_Staff">
                                        <h3>Scientists</h3>
                                    </Thumbnail>
                                </Link>
                            </Col>
                            <Col xs={12} md={3}>
                                <a href="/publications">
                                    <Thumbnail src={publications} alt="Publications">
                                        <h3>Publications</h3>
                                    </Thumbnail>
                                </a>
                            </Col>
                            <Col xs={12} md={3}>
                                <a href="/data-tools">
                                    <Thumbnail src={data_tools} alt="Data_Tools">
                                        <h3>Data & Tools</h3>
                                    </Thumbnail>
                                </a>
                            </Col>
                            <Col xs={12} md={3}>
                                <a href="/impact">
                                    <Thumbnail src={impact} alt="Impact">
                                        <h3>Impact</h3>
                                    </Thumbnail>
                                </a>
                            </Col>
                        </Row>
                    </div>
                </Grid>
            </div>
        )
    }
}