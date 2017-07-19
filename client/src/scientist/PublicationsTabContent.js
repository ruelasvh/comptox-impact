/**
 * Created by Victor H. Ruelas-Rivera on 3/15/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import PropTypes from 'prop-types';
import PublicationsList from '../publications/components/PublicationsList';

const PublicationsTabContent = ({ selectedPublications }) => (
    <PublicationsList publications={selectedPublications} infiniteScroll/>
)

PublicationsTabContent.propTypes = {
    selectedPublications: PropTypes.array,
};

export default PublicationsTabContent;
