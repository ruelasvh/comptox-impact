/**
 * Created by Victor H. Ruelas-Rivera on 3/15/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';
import Waypoint from 'react-waypoint';

// http client
import Client from '../utils/Client';
// components
import PublicationItem from '../publications/PublicationItem';
// styles
import './styles/publications-tab-content.css';

class PublicationsTabContent extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            publications: [],
            limit: 0,
            offset: 1,
            isLoading: false
        };

        // Bind functions
        this.handleFetchPublications = this.handleFetchPublications.bind(this);
    }

    handleFetchPublications() {
        let step = 8;
        let curLimit = this.state.limit + step;
        let curOffset = this.state.offset;

        Client.searchPublications(curLimit, curOffset, data => {
            // add data
            let currPublications = this.state.publications;
            let updatedPublications = currPublications.concat(data);

            this.setState({
                publications: updatedPublications,
                limit: curLimit + curOffset,
                offset: curOffset + curLimit,
                isLoading: false
            }, () => console.log('<PublicationsTab/> :', this.state))
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