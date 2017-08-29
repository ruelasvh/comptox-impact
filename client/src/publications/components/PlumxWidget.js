/**
 * Created by vruelasr on 11/2/16.
 */
import React from 'react';
import PropTypes from 'prop-types';

const PlumxWidget = ( { doi } ) => (
        <a
            className="plumx-plum-print-popup"
            href={`https://plu.mx/plum/a/?doi=${doi}`}
            data-hide-when-empty="false"
            data-popup="top"
            data-size="medium"
            target="_blank">
        </a>
);

PlumxWidget.propTypes = {
    doi: PropTypes.string.isRequired
};

export default PlumxWidget;