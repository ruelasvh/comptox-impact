/**
 * Created by vruelasr on 11/2/16.
 */
import React, { PropTypes } from 'react';

const AltmetricWidget = ( { doi } ) => (
    <div
        className="altmetric-embed"
        data-hide-less-than="1"
        data-badge-popover="left"
        data-badge-type="donut"
        data-doi={doi}>
    </div>
);

AltmetricWidget.propTypes = {
    doi: PropTypes.string.isRequired
};

export default AltmetricWidget;