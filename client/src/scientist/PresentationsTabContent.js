/**
 * Created by Victor H. Ruelas-Rivera on 2/16/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import PropTypes from 'prop-types';
import './styles/scientistprofile.css';

import PresentationPostersSubtabs from "../presentations/components/PresentationPostersSubtabs";

const PresentationsTabPresentationItem = ( {scientistName, scientistId} ) => (
        <PresentationPostersSubtabs options={{filter: 'BY_AUTHOR', scientistName: scientistName, scientistId: scientistId}}/>
);

PresentationsTabPresentationItem.propTypes = {
    scientistName: PropTypes.string,
    scientistId: PropTypes.number
};

export default PresentationsTabPresentationItem;