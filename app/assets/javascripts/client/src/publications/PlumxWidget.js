/**
 * Created by vruelasr on 11/2/16.
 */
import React, { PropTypes } from 'react';

const PlumxWidget = ( { doi } ) => (
    <a
        href={`https://plu.mx/plum/a/?doi=${encodeURI(doi)}`}
        className="plumx-plum-print-popup"
        data-hide-when-empty="false"
        data-popup="left"
        data-size="medium"
        target="_blank">
    </a>
);

PlumxWidget.propTypes = {
    doi: PropTypes.string.isRequired
};

export default PlumxWidget;