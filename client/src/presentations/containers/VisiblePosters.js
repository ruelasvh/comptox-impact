/**
 * Created by vruelasr on 7/12/17.
 */
import React from 'react'
import { connect } from 'react-redux'
import Loader from 'react-loader'
import PostersList from '../components/PostersList'
import { fetchPostersIfNeeded } from '../actions'

const mapStateToProps = (state) => {
    const {isFetching, all} = state.entities.posters || {isFetching: false, all: []}

    return {
        isFetching,
        posters: all
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        getPosters: () => {
            dispatch(fetchPostersIfNeeded())
        }
    }
}

export class VisiblePosters extends React.Component {
    componentDidMount() {
        this.props.getPosters()
    }

    render() {
        return (
            <Loader loaded={!this.props.isFetching}>
                <PostersList posters={this.props.posters}/>
            </Loader>
        )
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(VisiblePosters)