/**
 * Created by Victor H. Ruelas-Rivera on 2/15/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import orcidThumbnail from './img/ocrid.gif';
import plumxThumbnail from './img/plumx.png';
import linkedinThumbnail from './img/linkedIn.png';
import researchgateThumbnail from './img/researchgate.png';
import googlescholarThumbnail from './img/googlescholar.png';
import europepmcThumbnail from './img/europepmc.png';
import vivoThumbnail from './img/vivo.png';
import publonsThumbnail from './img/publons.png';
import './styles/scientistprofile.css';

export const linkTypes = {
    "ORCID": "ORCiD",
    "PLUMX": "Plum Analytics",
    "LINKEDIN": "LinkedIn",
    "RESEARCHGATE": "ResearchGate",
    "GOOGLE_SCHOLAR": "Google Scholar",
    "EUROPE_PMC": "Europe PMC",
    "VIVO": "VIVO-ORD Research and Expertise",
    "PUBLONS": "Publons",
    "MICROSOFT_ACADEMIC": "MicrosoftAcademic"
};

const linkDescriptions = {
    "ORCID": "works to ensure that people who participate in research, scholarship and innovation are uniquely identified and connected to their contributions and affiliations, across disciplines, borders, and time.",
    "PLUMX": "uses data exhaust from social media, usage logs, blog and media mentions, and online bookmarking sites to build a leading indicator of who and what research will be influential.",
    "LINKEDIN": "is a business and employment-oriented social networking service.",
    "RESEARCHGATE": "is a social networking site for scientists and researchers to share papers, ask and answer questions, and find collaborators.",
    "GOOGLE_SCHOLAR": "is a freely accessible web search engine that indexes the full text or metadata of scholarly literature across an array of publishing formats and disciplines.",
    "EUROPE_PMC": "is a repository, providing access to worldwide life sciences articles, books, patents and clinical guidelines. Europe PMC also offers a tool for authors to claim articles to their ORCID record.",
    "VIVO": "is ORD's expertise location tool, which integrates information about ORD federal researchers and cooperators from authoritative sources as well as direct user input.",
    "PUBLONS": "is a website and free service for researchers to share, discuss and receive credit for peer review and editing of academic publications.",
    "MICROSOFT_ACADEMIC": "is a free public search engine for academic publications and literature, developed by Microsoft Research."
};


function getExtraAttributeValues( linkType ) {
   if (linkType == linkTypes.ORCID) {
       return {"description": linkDescriptions.ORCID, "thumbnail": orcidThumbnail}
   } else if (linkType == linkTypes.PLUMX) {
       return {"description": linkDescriptions.PLUMX, "thumbnail": plumxThumbnail}
   } else if (linkType == linkTypes.LINKEDIN) {
       return {"description": linkDescriptions.LINKEDIN, "thumbnail": linkedinThumbnail}
   } else if (linkType == linkTypes.RESEARCHGATE) {
       return {"description": linkDescriptions.RESEARCHGATE, "thumbnail": researchgateThumbnail}
   } else if (linkType == linkTypes.GOOGLE_SCHOLAR) {
       return {"description": linkDescriptions.GOOGLE_SCHOLAR, "thumbnail": googlescholarThumbnail}
   } else if (linkType == linkTypes.EUROPE_PMC) {
       return {"description": linkDescriptions.EUROPE_PMC, "thumbnail": europepmcThumbnail}
   }else if (linkType == linkTypes.VIVO) {
       return {"description": linkDescriptions.VIVO, "thumbnail": vivoThumbnail}
   } else if (linkType == linkTypes.PUBLONS) {
       return {"description": linkDescriptions.PUBLONS, "thumbnail": publonsThumbnail}
   } else {
       return {}
   }
}

// stop here

const LinkedProfilesTabLink = ( { url, label }) => (
    <div className="linked-profile-tab-link">
        <a href={url} target="_blank">
            <div className="linked-profile-tab-link-thumbnail">
                <img src={getExtraAttributeValues(label).thumbnail} alt={label}/>
            </div>
        </a>
        <p><strong>{label}</strong> {getExtraAttributeValues(label).description}</p>
    </div>
);

LinkedProfilesTabLink.propTypes = {
    url:    PropTypes.string.isRequired,
    label:  PropTypes.string.isRequired
};

export default LinkedProfilesTabLink;