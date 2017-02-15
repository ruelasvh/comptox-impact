/**
 * Created by vruelasr on 11/2/16.
 */
import React from 'react';

export default function ( props ) {
     return (
            <a
                href={"https://plu.mx/plum/a/?doi=" + encodeURI(props.doi)}
                className="plumx-plum-print-popup"
                data-hide-when-empty="false"
                data-popup="left"
                data-size="medium"
                target="_blank">
            </a>
        );
}