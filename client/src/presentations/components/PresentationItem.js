/**
 * Created by vruelasr on 7/11/17.
 */
import React from 'react'
import PropTypes from 'prop-types'
import '../styles/presentation-item.css'

import { appPath } from '../../utils/Router'
import AltmetricWidget from '../../publications/components/AltmetricWidget'

const PresentationItem = ({ attributes }) => (
    <div className="presentation-item">
        <a href={attributes.url_public_html} target="_blank">
            <img alt="Presentation Thumb" src={attributes.thumb ? attributes.thumb : `${appPath()}/assets/api/misc/presentation-thumb.png` } />
        </a>
        <div className="item-title">{attributes.title}</div>
        <div className="item-details">
            <div className="item-doi">
                {attributes.doi.split('.v1')[0]}
            </div>
            <br/>
            <div className="relative-date">
                {attributes.published_date.split('T')[0]}
            </div>
            <br/>
            <div className="stats-wrap">
                <div className="divided">
                    <strong>477</strong>
                    <em>Views</em>
                </div>
                <div className="divided">
                    <strong>101</strong>
                    <em>Downloads</em>
                </div>
                <div className="divided">
                    <strong>0</strong>
                    <em>Citations</em>
                </div>
            </div>
            <div className="item-altmetric">
                <AltmetricWidget doi={attributes.doi.split('.v1')[0]}/>
            </div>
        </div>
    </div>
)

PresentationItem.propTypes = {
    attributes: PropTypes.object
}

export default PresentationItem