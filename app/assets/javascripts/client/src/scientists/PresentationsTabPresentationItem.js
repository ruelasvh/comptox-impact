/**
 * Created by Victor H. Ruelas-Rivera on 2/16/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import './styles/scientistprofile.css';

const PresentationsTabPresentationItem = ( {userUrl} ) => (
    <div className="slide-share-item">
        <iframe
            src="https://www.slideshare.net/AntonyWilliams/slideshelf"
            width="760px"
            height="570px"
            frameBorder="0"
            marginWidth="0"
            marginHeight="0"
            scrolling="no"
            style={{border:'none'}}
            allowFullScreen
            webkitallowfullscreen
            mozallowfullscreen/>
    </div>
);

PresentationsTabPresentationItem.propTypes = {
    userUrl: PropTypes.string.isRequired
};

export default PresentationsTabPresentationItem;