/**
 * Created by vruelasr on 11/2/16.
 */
import React, { PropTypes } from 'react';

const AltmetricWidget = ( { doi } ) => (
    <div
        className="altmetric-embed"
        data-badge-popover="left"
        data-badge-type="donut"
        data-link-target="_blank"
        data-doi={doi}>
    </div>
);

AltmetricWidget.propTypes = {
    doi: PropTypes.string.isRequired
};

export default AltmetricWidget;