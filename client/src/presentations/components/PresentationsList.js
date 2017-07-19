/**
 * Created by vruelasr on 6/29/17.
 */
import React from 'react';
import {Pagination} from 'react-bootstrap'

import PresentationItem from './PresentationItem'
import '../styles/presentations-list.css'


class PresentationsList extends React.Component {
    constructor(props) {
        super(props)

        this.state = {
            allPresentations: this.props.presentations,
            filteredPresentations: this.props.presentations,
            searchTerm: '',
            activePage: 1,
            presentationsPerPage: 12,
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

        let newlyFiltered = this.state.presentations.filter(
            (presentation) => {
                return (
                    // (presentation.doi ? presentation.doi.includes(event.target.value) : false) ||
                    (presentation.citation ? presentation.citation.toLowerCase().includes(event.target.value.toLowerCase()) : false)
                )
            }
        );

        this.setState({
            searchTerm: event.target.value,
            filteredPresentations: newlyFiltered,
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
        const { filteredPresentations, activePage, searchTerm, savedPage, presentationsPerPage } = this.state;
        const currentPage = searchTerm == '' ? savedPage : activePage;
        // Logic for displaying current publications
        const indexOfLastPresentation = currentPage * presentationsPerPage;
        const indexOfFistPresentation = indexOfLastPresentation - presentationsPerPage;
        const currentPresentations = filteredPresentations.slice(indexOfFistPresentation, indexOfLastPresentation);
        // Render presentations
        const renderAllPresentations = currentPresentations.map(presentation => {
                return <PresentationItem attributes={presentation} key={presentation.id}/>
            })

        return (
            <div>
                {renderAllPresentations}
                <div className="presentations-list-pagination">
                    <Pagination
                        prev
                        next
                        first
                        last
                        ellipsis
                        boundaryLinks
                        items={Math.ceil(filteredPresentations.length / presentationsPerPage)}
                        maxButtons={5}
                        activePage={currentPage}
                        onSelect={this.handleSelectPage} />
                </div>
            </div>
        )
    }
}

export default PresentationsList