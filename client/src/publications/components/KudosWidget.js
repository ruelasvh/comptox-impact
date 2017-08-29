/**
 * Created by vruelasr on 11/2/16.
 */
import React from 'react';
import PropTypes from 'prop-types';
import kudos from '../img/kudos_butterfly_large.png';

const Kudos = ( { doi } ) => (
     <a
         href={"https://www.growkudos.com/publications/" + encodeURIComponent(encodeURIComponent(doi))}
         target="_blank">
         <img src={kudos} alt="Grow Kudos"/>
     </a>
);

Kudos.propTypes = {
    doi: PropTypes.string.isRequired
};

export default Kudos;
