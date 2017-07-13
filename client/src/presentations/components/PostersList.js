/**
 * Created by vruelasr on 7/12/17.
 */
import React from 'react';
import {Pagination} from 'react-bootstrap'

import PresentationItem from './PresentationItem'
import '../styles/presentations-list.css'


class PostersList extends React.Component {
    constructor(props) {
        super(props)

        this.state = {
            allPosters: this.props.posters,
            filteredPosters: this.props.posters,
            searchTerm: '',
            activePage: 1,
            postersPerPage: 12,
            savedPage: 1
        }

        //Bindings
        this.handleSelectPage = this.handleSelectPage.bind(this);
        this.handleInputChange = this.handleInputChange.bind(this);
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

    // To be used with the Pagination widget.
    handleSelectPage(eventKey) {
        this.setState({
            activePage: eventKey,
            savedPage: eventKey
        })
    }

    // Handle search bar input behaviour
    handleInputChange(event) {
        // Scroll up
        window.scrollTo(0,0);

        let newlyFiltered = this.state.posters.filter(
            (presentation) => {
                return (
                    // (presentation.doi ? presentation.doi.includes(event.target.value) : false) ||
                    (presentation.citation ? presentation.citation.toLowerCase().includes(event.target.value.toLowerCase()) : false)
                )
            }
        );

        this.setState({
            searchTerm: event.target.value,
            filteredPosters: newlyFiltered,
            activePage: 1
        });
    }

    componentDidMount() {
        // From props get either collection id, for the center, or the authors id
        // and make redux api call and store in app state
        // this.props.collection or this.props.author is an int
        this.appendAltmetricScript()
    }

    componentDidUpdate() {
        this.appendAltmetricScript();
    }

    render() {
        const { filteredPosters, activePage, searchTerm, savedPage, postersPerPage } = this.state;
        const currentPage = searchTerm == '' ? savedPage : activePage;
        // Logic for displaying current publications
        const indexOfLastPresentation = currentPage * postersPerPage;
        const indexOfFistPresentation = indexOfLastPresentation - postersPerPage;
        const currentPosters = filteredPosters.slice(indexOfFistPresentation, indexOfLastPresentation);
        // Render posters
        const renderAllPosters = currentPosters.map(presentation => {
            return <PresentationItem attributes={presentation}/>
        })

        return (
            <div>
                {renderAllPosters}
                <div className="presentations-list-pagination">
                    <Pagination
                        prev
                        next
                        first
                        last
                        ellipsis
                        boundaryLinks
                        items={Math.ceil(filteredPosters.length / postersPerPage)}
                        maxButtons={5}
                        activePage={currentPage}
                        onSelect={this.handleSelectPage} />
                </div>
            </div>
        )
    }
}

export default PostersList