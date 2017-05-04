/**
 * Created by Victor H. Ruelas-Rivera on 3/15/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import Waypoint from 'react-waypoint';

// http client
import Client from '../utils/Client';
// components
import PublicationItem from '../publications/components/PublicationItem';
// styles
import './styles/publications-tab-content.css';

class PublicationsTabContent extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            publications: [],
            limit: 8,
            offset: 0,
            isLoading: false
        };

        // Bind functions
        this.handleFetchPublications = this.handleFetchPublications.bind(this);
    }

    appendPlumxScript() {
        if (document.getElementById('plumx-script')) {
            if (window.__plumX) {
                window.__plumX.widgets.popup.wireUp();
            }
            return;
        }
        const plumxScript = document.createElement("script");
        plumxScript.id = 'plumx-script';
        plumxScript.src = "//d39af2mgp1pqhg.cloudfront.net/widget-popup.js";
        plumxScript.async = true;
        document.head.appendChild(plumxScript);
    }

    appendAltmetricScript() {
        if (document.getElementById('altmetric-script')) {
            if (window._altmetric) {
                window._altmetric.embed_init();
            }
            return;
        }
        const altMetricScript = document.createElement("script");
        altMetricScript.id = 'altmetric-script';
        altMetricScript.src = "//d1bxh8uas1mnw7.cloudfront.net/assets/embed.js";
        altMetricScript.async = true;
        document.head.appendChild(altMetricScript);
    }
    handleFetchPublications() {
        let step = this.state.limit;
        let curOffset = this.state.offset;

        Client.searchPublications(step, curOffset, response => {
            // add data
            let currPublications = this.state.publications;
            let updatedPublications = currPublications.concat(response.data);

            this.setState({
                publications: updatedPublications,
                offset: curOffset + step,
                isLoading: false
            }, () => console.log('<PublicationsTab/> :', this.state))
            window.__plumX.widgets.popup.wireUp();
            window._altmetric.embed_init();
        })
    }

    renderPublications() {
        return (
            <div>
                {this.state.publications.map(function (publication, index) {
                    return (
                        <PublicationItem
                            id={'pub-item-' + index.toString()}
                            key={'pub-item-' + index.toString()}
                            publication={publication}
                            centerWide={false} />
                    );
                })}
            </div>
        )
    }

    renderWaypoint() {
        if (!this.state.isLoading) {
            return (
                <Waypoint
                    onEnter={this.handleFetchPublications}
                />
            )
        }
    }

    componentDidMount() {
        this.appendPlumxScript();
        this.appendAltmetricScript();
    }

    render() {
        return (
            <div className="infinite-scroll-example">
                <p className="infinite-scroll-example__count">
                    Items Loaded: {this.state.publications.length}
                </p>
                <div className="infinite-scroll-example__scrollable-parent">
                    {this.renderPublications()}
                    <div className="infinite-scroll-example__waypoint">
                        {this.renderWaypoint()}
                        {/*{this.state.isLoading ? '' : 'Loading more publications...'}*/}
                    </div>
                </div>
            </div>
        );
    }
}

PublicationsTabContent.propTypes = {
    onEnter: PropTypes.func, // function called when waypoint enters viewport
    onLeave: PropTypes.func, // function called when waypoint leaves viewport
}

export default PublicationsTabContent;
