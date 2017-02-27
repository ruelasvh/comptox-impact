/**
 * Created by Victor H. Ruelas-Rivera on 2/15/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import './styles/scientistprofile.css';

const LinkedProfilesTabLink = ( { url, title, thumbnail, linkIdPrefix }) => (
    <div>
        <div>
            <a className="linked-profile-tab-link" href={url} target="_blank">
                <div className="linked-profile-tab-link-thumbnail">
                    <img src={thumbnail} alt={linkIdPrefix}/>
                </div>
                {' '}
                <div>{title}</div>
            </a>
        </div>
        <br/>
    </div>
);

LinkedProfilesTabLink.propTypes = {
    url:    PropTypes.string.isRequired,
    title:  PropTypes.string.isRequired,
    thumbnail: PropTypes.string.isRequired,
    linkIdPrefix: PropTypes.string.isRequired
};

export default LinkedProfilesTabLink;