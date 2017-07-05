/**
 * Created by Victor H. Ruelas-Rivera on 6/6/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { connect } from 'react-redux';
import Loader from 'react-loader';
import DataToolsMain from '../components/DataToolsMain';
import { fetchAnalyticsIfNeeded } from '../actions';

function mapStateToProps(state) {
  const analytics = state.entities.datasets.analytics || {}

  return { analytics }
}

function mapDispatchToProps(dispatch) {
    return {
        getDatasets: () => dispatch(fetchAnalyticsIfNeeded('comptoxdashboard', 'usage'))
    }
}

class DataTools extends React.Component {
    componentDidMount() {
        this.props.getDatasets();
    }

    render() {
        return (
            <Loader loaded={!this.props.analytics.isFetching}>
                <DataToolsMain analytics={this.props.analytics}/>
            </Loader>
        )
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(DataTools);
