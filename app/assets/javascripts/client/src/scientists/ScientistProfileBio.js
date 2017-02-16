/**
 * Created by Victor H. Ruelas-Rivera on 2/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { Row, Col } from 'react-bootstrap';
import './styles/scientistprofile.css';


export default function ( { scientistDetails } ) {

    return (
        <div className="scientist-bio">
            <br/><br/><br/><br/><br/><br/><br/>
            <Col>
                <h4 className="headline"><strong>Bio</strong></h4>
                <div dangerouslySetInnerHTML={{__html: scientistDetails.bio}}/>
            </Col>
        </div>
    );
}