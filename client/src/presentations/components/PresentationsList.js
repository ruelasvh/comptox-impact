/**
 * Created by vruelasr on 6/29/17.
 */
import React from 'react';
import {Nav, NavItem} from 'react-bootstrap'

class PresentationsList extends React.Component {
    constructor(props) {
        super(props)

        const presentations = "presentations"
        const posters = "posters"

        this.state = {
            selectedPresentationType: presentations
        };

        this.handleSelectPubsPresNav = this.handleSelectPubsPresNav.bind(this)

    }

    handleSelectPubsPresNav(key) {
        this.setState({ selectedPresentationType: key })
    }

    componentDidMount() {
        // From props get either collection id, for the center, or the authors id
        // and make redux api call and store in app state
        // this.props.collection or this.props.author is an int
    }

    render() {

        console.log('props', this.props)

        const PresPostNavInstance = () => (
            <div>
                <Nav bsStyle="pills" justified activeKey={this.state.selectedPresentationType}
                     onSelect={this.handleSelectPubsPresNav}>
                    <NavItem eventKey="presentations" disabled={false}>Presentations</NavItem>
                    <NavItem eventKey="posters" disabled={false}>Posters</NavItem>
                </Nav>
                {this.state.selectedPresentationType === "presentations" ? "render presentations" : "render posters"}
            </div>
        )

        return (
            <PresPostNavInstance/>
        )
    }
}

export default PresentationsList