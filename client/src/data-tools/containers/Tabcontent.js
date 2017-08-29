/**
 * Created by vruelasr on 8/23/17.
 */
import React from 'react'
import { connect } from 'react-redux'
import Loader from 'react-loader'
import TabcontentView from '../components/TabcontentView'
import { fetchAnalyticsIfNeeded } from '../actions'
import '../styles/datatoolsmain.css'

function mapStateToProps(state) {
  const {
    analytics
  } = state.entities.datasets || {
    analytics: {}
  };
  
  return {
    analytics: analytics
  }
}

function mapDispatchToProps(dispatch) {
  return {
    getDatasets: (app) => dispatch(fetchAnalyticsIfNeeded(app))
  }
}

class Tabcontent extends React.Component {
  componentDidMount() {
    const app = this.props.tab.eventKey
    this.props.getDatasets(app)
  }
  
  render() {
    const analytics = this.props.analytics
    const tab = this.props.tab
    Object.assign(tab, {
      data: analytics[tab.eventKey]
    })
    
    return (
      <Loader loaded={!tab.data.isFetching} className="loader">
        <TabcontentView tab={tab}/>
      </Loader>
    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(Tabcontent);