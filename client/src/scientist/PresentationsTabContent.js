/**
 * Created by Victor H. Ruelas-Rivera on 2/16/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import PropTypes from 'prop-types';
import './styles/scientistprofile.css';

const PresentationsTabPresentationItem = ( {userUrl} ) => (
    <div className="slide-share-item">

        {/*<iframe*/}
            {/*src="https://widgets.figshare.com/articles/4679824/embed?show_title=1"*/}
            {/*width="568px"*/}
            {/*height="426px"*/}
            {/*frameBorder="0">*/}
        {/*</iframe>*/}

    </div>
);

PresentationsTabPresentationItem.propTypes = {
    userUrl: PropTypes.string.isRequired
};

export default PresentationsTabPresentationItem;