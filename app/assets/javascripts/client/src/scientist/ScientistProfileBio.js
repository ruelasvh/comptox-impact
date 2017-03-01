/**
 * Created by Victor H. Ruelas-Rivera on 2/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Row, Col } from 'react-bootstrap';
import './styles/scientistprofile.css';


const ScientistProfileBio = ( { scientistBio } ) => (
    <div className="scientist-bio">
        <br/><br/><br/><br/><br/><br/><br/>
        {scientistBio ?
        <Col>
            <h4 className="headline"><strong>Bio</strong></h4>
            <div dangerouslySetInnerHTML={{__html: scientistBio}}/>
        </Col> : ''}
    </div>
);

ScientistProfileBio.propTypes = {
    scientistBio: PropTypes.string.isRequired
};

export default ScientistProfileBio;