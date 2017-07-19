/**
 * Created by vruelasr on 7/12/17.
 */
import React from 'react'
import { connect } from 'react-redux'
import Loader from 'react-loader'
import PostersList from '../components/PostersList'
import { fetchPostersIfNeeded } from '../actions'

const mapStateToProps = (state) => {
    const {isFetching, all, byAuthor} = state.entities.posters || {isFetching: false, all: [], byAuthor: {}}

    return {
        isFetching,
        posters: all,
        postersByAuthor: byAuthor
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        getPosters: (options) => {
            dispatch(fetchPostersIfNeeded(options))
        }
    }
}

export class VisiblePosters extends React.Component {
    componentDidMount() {
        this.props.getPosters(this.props.options)
    }

    render() {
        const {filter, scientistId} = this.props.options
        const posters = filter === 'ALL' ? this.props.posters : this.props.postersByAuthor[scientistId]
        // console.log('Passed props to VisiblePosters', this.props.options)
        // console.log('List of posters', posters.length)
        return (
            <Loader loaded={!this.props.isFetching}>
                {
                    typeof posters !== 'undefined' && posters.length === 0 ?
                        <p style={{textAlign: 'center'}}>No posters found.</p> :
                        <PostersList posters={posters} type={"paginated or infiniteScroll"}/>
                }
            </Loader>
        )
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(VisiblePosters)