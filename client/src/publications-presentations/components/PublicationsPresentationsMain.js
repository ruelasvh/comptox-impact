/**
 * Created by vruelasr on 6/29/17.
 */
import React from 'react'
import {Tabs, Tab, Grid} from 'react-bootstrap'
import VisiblePublications from '../../publications/container/VisiblePublications'
import PresentationsList from '../../presentations/components/PresentationsList'

class PublicationsPresentationsMain extends React.Component {
    constructor(props) {
        super(props);

        const publicationsTab = 1
        const presentationsTab = 2

        this.state = {
            selectedTab: presentationsTab,
        };

        // Bind functions
        this.handleSelect = this.handleSelect.bind(this)
    }

    handleSelect( key ) {
        this.setState({ selectedTab: key });
    }

    render() {

        return (
            <div style={{paddingTop: '2%'}}>
                <Grid>
                    <Tabs activeKey={this.state.selectedTab} onSelect={this.handleSelect} id="controlled-tabs">
                        <Tab eventKey={1} title="Publications" mountOnEnter={true}>
                            <div className="tab-frame" style={{marginBottom: '8em'}}>
                                <VisiblePublications/>
                            </div>
                        </Tab>
                        <Tab eventKey={2} title="Presentations" mountOnEnter={true}>
                            <div className="tab-frame">
                                <PresentationsList/>
                            </div>
                        </Tab>
                    </Tabs>
                </Grid>
            </div>
        );
    }
}

export default PublicationsPresentationsMain