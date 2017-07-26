/**
 * Created by Victor H. Ruelas-Rivera on 6/6/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { connect } from 'react-redux';
import DataToolsMain from '../components/DataToolsMain';

function mapStateToProps(state) {
  const analytics = state.entities.datasets.analytics || {}

  return { analytics }
}

function mapDispatchToProps(dispatch) {
    return {
    }
}

class DataTools extends React.Component {

    render() {
        return (
            <DataToolsMain analytics={this.props.analytics}/>
        )
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(DataTools);
