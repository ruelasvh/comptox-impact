/**
 * Created by vruelasr on 11/2/16.
 */
import React from 'react';
import kudos from './img/kudos_butterfly_large.png';

export default function ( props ) {
     return (
         <a
             href={"https://www.growkudos.com/publications/" + encodeURIComponent(encodeURIComponent(props.doi))}
             target="_blank">
             <img src={kudos} alt="Grow Kudos"/>
         </a>
        );
}