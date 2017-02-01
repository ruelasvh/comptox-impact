/**
 * Created by Victor H. Ruelas-Rivera on 2/1/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import { Thumbnail } from 'react-bootstrap';
import '../styles/ScientistsIndex.css';

const Scientist = ({ scientist, scientists_path, i }) => (
    <div className="scientists-item"
         last-name={scientist.lastName}
         key={"scientist-component-" + i}>
        <a href={scientists_path + "/" + scientist.scientistId}>
            {/*<Link to={`/scientists/${props.scientist.scientistId}`}>*/}
            <Thumbnail
                src={require('../img/' + scientist.photoUrl)}
                alt="Scientist Image">
                <h4>{scientist.firstName + ' ' + scientist.lastName}</h4>
                <p>{scientist.title}</p>
            </Thumbnail>
            {/*</Link>*/}
        </a>
    </div>
);

Scientist.propTypes = {
    scientist: PropTypes.shape({
        scientistId: PropTypes.number.isRequired,
        firstName: PropTypes.string.isRequired,
        lastName: PropTypes.string.isRequired,
        title: PropTypes.string.isRequired,
        email: PropTypes.string.isRequired,
        photoUrl: PropTypes.string.isRequired,
        orcid: PropTypes.string.isRequired,
        researchGate: PropTypes.string.isRequired,
        googleScholar: PropTypes.string.isRequired,
        linkedIn: PropTypes.string.isRequired,
        plumx: PropTypes.string.isRequired,
        publons: PropTypes.string.isRequired,
        europePmc: PropTypes.string.isRequired,
        bio: PropTypes.string.isRequired,
        createdBy: PropTypes.string.isRequired,
        updatedBy: PropTypes.string.isRequired,
        publications: PropTypes.string.isRequired,
        presentations: PropTypes.string.isRequired,
        projects: PropTypes.string.isRequired,
        selfUrl: PropTypes.string.isRequired,
        created_at: PropTypes.string.isRequired,
        updated_at: PropTypes.string.isRequired
    }),
    scientists_path: PropTypes.string.isRequired,
    i: PropTypes.number.isRequired
};

export default Scientist;