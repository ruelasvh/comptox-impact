/**
 * Created by Victor H. Ruelas-Rivera on 2/15/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import './styles/scientistprofile.css';

export default function ( {url, title, thumbnail, linkIdPrefix }) {
    return (
        <div>
            <a className="linked-profile-tab-link" href={url} target="_blank">
                <div className="linked-profile-tab-link-thumbnail">
                    <img src={thumbnail} alt={linkIdPrefix}/>
                </div>
                {' '}
                <div>{title}</div>
            </a>
        </div>
    );
}