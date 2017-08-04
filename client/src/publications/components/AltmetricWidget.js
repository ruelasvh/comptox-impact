/**
 * Created by vruelasr on 11/2/16.
 */
import React from 'react';
import PropTypes from 'prop-types';

const AltmetricWidget = ( { doi } ) => (
    <div
        className="altmetric-embed"
        data-badge-popover="left"
        data-badge-type="donut"
        data-link-target="_blank"
        data-doi={doi}>
    </div>
);


// class AltmetricWidget extends React.Component {
//     appendAltmetricScript() {
//         if (document.getElementById('altmetric-script')) {
//             if (window._altmetric) {
//                 window._altmetric.embed_init();
//             }
//             return;
//         }
//         const altMetricScript = document.createElement("script");
//         altMetricScript.id = 'altmetric-script';
//         altMetricScript.src = "//d1bxh8uas1mnw7.cloudfront.net/assets/embed.js";
//         altMetricScript.async = true;
//         document.head.appendChild(altMetricScript);
//     }
//
//     componentDidMount() {
//         this.appendAltmetricScript()
//     }
//
//     render() {
//         return (
//             <div
//                 className="altmetric-embed"
//                 data-badge-popover="left"
//                 data-badge-type="donut"
//                 data-link-target="_blank"
//                 data-doi={this.props.doi}>
//             </div>
//         )
//     }
// }

AltmetricWidget.propTypes = {
    doi: PropTypes.string.isRequired
};

export default AltmetricWidget;