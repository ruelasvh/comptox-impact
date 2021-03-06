/**
 * Created by Victor H. Ruelas-Rivera on 2/1/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Thumbnail } from 'react-bootstrap';
import { Link } from 'react-router';
import '../styles/scientistsindex.css';

const Scientist = ({ scientist }) => {
    let scientistPhotoURL = "";
    if (process.env.NODE_ENV === "production") {
        scientistPhotoURL = scientist.photoUrl ?
            scientist.photoUrl :
            'http://comptox.ag.epa.gov/impact/assets/api/staff/person_thumbnail.jpg';
    } else {
        scientistPhotoURL = scientist.photoUrl ?
            `/api/scientists/${scientist.scientistId}/photo/${scientist.scientistId}.jpg` :
            'http://comptox.ag.epa.gov/impact/assets/api/staff/person_thumbnail.jpg';
    }

    return (
    <div className="scientists-item">
        <Link to={{ pathname: `/scientists/${scientist.scientistId}`, state: { scientist }}}>
            <Thumbnail src={scientistPhotoURL} alt="Scientist_Image">
                <div style={{height: 75}}>
                <h4>{scientist.firstName + ' '}<span className="last-name">{scientist.lastName}</span></h4>
                <p>{scientist.title}</p>
                </div>
            </Thumbnail>
        </Link>
    </div>
)};

Scientist.propTypes = {
    // scientist: PropTypes.shape({
    //     scientistId: PropTypes.number.isRequired,
    //     firstName: PropTypes.string.isRequired,
    //     lastName: PropTypes.string.isRequired,
    //     title: PropTypes.string.isRequired,
    //     email: PropTypes.string.isRequired,
    //     photoUrl: PropTypes.string.isRequired,
    //     orcid: PropTypes.string.isRequired,
    //     researchGate: PropTypes.string.isRequired,
    //     googleScholar: PropTypes.string.isRequired,
    //     linkedIn: PropTypes.string.isRequired,
    //     plumx: PropTypes.string.isRequired,
    //     publons: PropTypes.string.isRequired,
    //     europePmc: PropTypes.string.isRequired,
    //     bio: PropTypes.string.isRequired,
    //     createdBy: PropTypes.string.isRequired,
    //     updatedBy: PropTypes.string.isRequired,
    //     publications: PropTypes.string.isRequired,
    //     presentations: PropTypes.string.isRequired,
    //     projects: PropTypes.string.isRequired,
    //     selfUrl: PropTypes.string.isRequired,
    //     created_at: PropTypes.string.isRequired,
    //     updated_at: PropTypes.string.isRequired
    // }).isRequired,
    scientist: PropTypes.object.isRequired
};

export default Scientist;