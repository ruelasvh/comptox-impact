/**
 * Created by Victor H. Ruelas-Rivera on 2/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { Tooltip, OverlayTrigger} from 'react-bootstrap';
import orcid from './img/ocrid.gif';
import plumx from './img/plumx.png';
import linkedin from './img/linkedIn.png';
import researchgate from './img/researchgate.png';
import googlescholar from './img/googlescholar.png';
import './scientistprofile.css';

export default function ( { scientistDetails, linkIdPrefix } ) {

    return (
        <div className="scientist-links">
            <OverlayTrigger placement="top" overlay={<Tooltip id={linkIdPrefix + 'orcid'}>ORCiD</Tooltip>}>
                <a className={"scientist-links-button " + (scientistDetails.orcid ? '' : 'scientist-links-button-disabled')} href={"http://orcid.org/" + scientistDetails.orcid} target="_blank">
                    <img src={orcid} alt="ORCiD"/>
                </a>
            </OverlayTrigger>
            <OverlayTrigger placement="top" overlay={<Tooltip id={linkIdPrefix + 'plumx'}>PlumX</Tooltip>}>
                <a className={"scientist-links-button " + (scientistDetails.plumx ? '' : 'scientist-links-button-disabled')} href={scientistDetails.plumx} target="_blank">
                    <img src={plumx} alt="PlumX"/>
                </a>
            </OverlayTrigger>
            <OverlayTrigger placement="top" overlay={<Tooltip id={linkIdPrefix + 'linkedin'}>LinkedIn</Tooltip>}>
                <a className={"scientist-links-button " + (scientistDetails.linkedIn ? '' : 'scientist-links-button-disabled')} href={scientistDetails.linkedIn} target="_blank">
                    <img src={linkedin} alt="LinkedIn"/>
                </a>
            </OverlayTrigger>
            <OverlayTrigger placement="top" overlay={<Tooltip id={linkIdPrefix + 'researchgate'}>ResearchGate</Tooltip>}>
                <a className={"scientist-links-button " + (scientistDetails.researchGate ? '' : 'scientist-links-button-disabled')} href={scientistDetails.researchGate} target="_blank">
                    <img src={researchgate} alt="ResearchGate"/>
                </a>
            </OverlayTrigger>
            <OverlayTrigger placement="top" overlay={<Tooltip id={linkIdPrefix + 'googlescolar'}>Google Scholar</Tooltip>}>
                <a className={"scientist-links-button " + (scientistDetails.googleScholar ? '' : 'scientist-links-button-disabled')} href={scientistDetails.googleScholar} target="_blank">
                    <img src={googlescholar} alt="GoogleScholar"/>
                </a>
            </OverlayTrigger>
        </div>
    );
}