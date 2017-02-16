/**
 * Created by Victor H. Ruelas-Rivera on 2/16/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import './styles/scientistprofile.css';

const PresentationsTabPresentationItem = ( {slideShareUrl} ) => (
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

export default PresentationsTabPresentationItem;