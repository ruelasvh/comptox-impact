/**
 * Created by vruelasr on 11/2/16.
 */
import React, { PropTypes } from 'react';
import kudos from '../img/kudos_butterfly_large.png';

const Kudos = ( { doi } ) => (
     <a
         href={`https://www.growkudos.com/publications/${doi}`}
         target="_blank">
         <img src={kudos} alt="Grow Kudos"/>
     </a>
);

Kudos.propTypes = {
    doi: PropTypes.string.isRequired
};

export default Kudos;
