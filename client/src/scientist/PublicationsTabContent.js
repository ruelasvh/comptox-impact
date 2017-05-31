/**
 * Created by Victor H. Ruelas-Rivera on 3/15/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import Waypoint from 'react-waypoint';

// components
import PublicationItem from '../publications/components/PublicationItem';
// styles
import './styles/publications-tab-content.css';

class PublicationsTabContent extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            limit: 0,
        };

        // Bind functions
        this.handlePublications = this.handlePublications.bind(this);
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

    handlePublications() {
        let step = 8;
        let currLimit = this.state.limit;

        this.setState({
            limit: currLimit + step,
        }, () => {
            window.__plumX.widgets.popup.wireUp();
            window._altmetric.embed_init();
        });
    }

    renderPublications() {
        return (
            <div>
                {this.props.selectedPublications.slice(0, this.state.limit).map(function (publication, index) {
                    return (
                        <PublicationItem
                            id={'pub-item-' + index.toString()}
                            key={'pub-item-' + index.toString()}
                            publication={publication}
                            centerWide={true} />
                    );
                })}
            </div>
        )
    }

    renderWaypoint() {
        return (
            <Waypoint
                onEnter={this.handlePublications}
            />
        )

    }

    componentDidMount() {
        this.appendPlumxScript();
        this.appendAltmetricScript();
    }

    render() {
        return (
            <div className="infinite-scroll-example">
                {/*For debugging*/}
                <p className="infinite-scroll-example__count">
                    Publications Loaded: {this.state.limit < this.props.selectedPublications.length ? this.state.limit : this.props.selectedPublications.length}.
                    Total: {this.props.selectedPublications.length}.
                </p>
                <div className="infinite-scroll-example__scrollable-parent">
                    {this.renderPublications()}
                    <div className="infinite-scroll-example__waypoint">
                        {this.state.limit < this.props.selectedPublications.length ? this.renderWaypoint() : ' '}
                    </div>
                </div>
            </div>
        );
    }
}

PublicationsTabContent.propTypes = {
    selectedPublications: PropTypes.array.isRequired,
    onEnter: PropTypes.func, // function called when waypoint enters viewport
    onLeave: PropTypes.func, // function called when waypoint leaves viewport
};

export default PublicationsTabContent;
