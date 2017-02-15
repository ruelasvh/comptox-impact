/**
 * Created by vruelasr on 11/2/16.
 */
import React from 'react';

export default function ( { doi } ) {

        return (
            <div
                className="altmetric-embed"
                data-hide-less-than="1"
                data-badge-popover="left"
                data-badge-type="donut" data-doi={doi}>
            </div>
        )
}