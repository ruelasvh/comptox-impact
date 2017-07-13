/**
 * Created by vruelasr on 7/11/17.
 */
import React from 'react'
import { connect } from 'react-redux'
import Loader from 'react-loader'
import PresentationsList from '../components/PresentationsList'
import { fetchPresentationsIfNeeded } from '../actions'

const mapStateToProps = (state) => {
    const {isFetching, all} = state.entities.presentations || {isFetching: false, all: []}

    return {
        isFetching,
        presentations: all
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        getPresentations: () => {
            dispatch(fetchPresentationsIfNeeded())
        }
    }
}

export class VisiblePresentations extends React.Component {
    componentDidMount() {
        this.props.getPresentations()
    }

    render() {
        return (
            <Loader loaded={!this.props.isFetching}>
                <PresentationsList presentations={this.props.presentations}/>
            </Loader>
        )
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(VisiblePresentations)