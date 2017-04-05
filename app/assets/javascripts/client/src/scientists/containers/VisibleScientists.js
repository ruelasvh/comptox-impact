/**
 * Created by Victor H. Ruelas-Rivera on 4/4/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { connect } from 'react-redux';
import Loader from 'react-loader';
import ScientistsList from '../components/ScientistsList';
import { fetchScientistsIfNeeded } from '../actions';

function mapStateToProps(state) {
    const {
        isFetching,
        byId
    } = state.entities.scientists || {
        isFetching: false,
        byId: {}
    };

    return {
        isFetching: isFetching,
        scientists: byId
    }
}

function mapDispatchToProps(dispatch) {
    return {
        getScientists: () => {
            dispatch(fetchScientistsIfNeeded())
        }
    }
}

class VisibleScientists extends React.Component {
    componentDidMount() {
        this.props.getScientists();
    }

    render() {
        return (
            <Loader loaded={!this.props.isFetching}>
                <ScientistsList scientists={this.props.scientists}/>
            </Loader>
        )
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(VisibleScientists);