/**
 * Created by vruelasr on 6/29/17.
 */
import React from 'react'
import {Tabs, Tab, Grid} from 'react-bootstrap'

import PresentationsPostersSubtabs from '../../presentations/components/PresentationPostersSubtabs'
import VisiblePublications from '../../publications/container/VisiblePublications'
import VisiblePresentations from '../../presentations/containers/VisiblePresentations'

class PublicationsPresentationsMain extends React.Component {
    constructor(props) {
        super(props);

        const publicationsTab = "publications-tab"
        const presentationsTab = "presentations-tab"

        this.state = {
            selectedTab: publicationsTab
        };

        // Bind functions
        this.handleSelectPubsPresTabs = this.handleSelectPubsPresTabs.bind(this)
    }

    handleSelectPubsPresTabs(key ) {
        this.setState({ selectedTab: key });
    }

    render() {

        return (
            <div style={{paddingTop: '2%'}}>
                <Grid>
                    <Tabs activeKey={this.state.selectedTab} onSelect={this.handleSelectPubsPresTabs} id="controlled-tabs-pubs-pres">
                        <Tab eventKey="publications-tab" title="Publications" mountOnEnter={true} unmountOnExit={true}>
                            <div className="tab-frame" style={{marginBottom: '8em'}}>
                                <VisiblePublications/>
                            </div>
                        </Tab>
                        <Tab eventKey="presentations-tab" title="Presentations" mountOnEnter={true} unmountOnExit={true}>
                            <div className="tab-frame">
                                {/*<VisiblePresentations/>*/}
                                <PresentationsPostersSubtabs/>
                            </div>
                        </Tab>
                    </Tabs>
                </Grid>
            </div>
        );
    }
}

export default PublicationsPresentationsMain