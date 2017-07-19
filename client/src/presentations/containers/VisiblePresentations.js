/**
 * Created by vruelasr on 7/11/17.
 */
import React from 'react'
import { connect } from 'react-redux'
import Loader from 'react-loader'
import PresentationsList from '../components/PresentationsList'
import { fetchPresentationsIfNeeded } from '../actions'

const mapStateToProps = (state) => {
    const {isFetching, all, byAuthor} = state.entities.presentations || {isFetching: false, all: [], byAuthor: {}}

    return {
        isFetching,
        presentations: all,
        presentationsByAuthor: byAuthor
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        getPresentations: (options) => {
            dispatch(fetchPresentationsIfNeeded(options))
        }
    }
}

export class VisiblePresentations extends React.Component {
    componentDidMount() {
        this.props.getPresentations(this.props.options)
    }

    render() {
        const {filter, scientistId} = this.props.options
        const presentations = filter === 'ALL' ? this.props.presentations : this.props.presentationsByAuthor[scientistId]
        // console.log('Options passed to VisiblePresentations', this.props.options)
        // console.log('Presentations list', presentations[scientistId])
        return (
            <Loader loaded={!this.props.isFetching}>
                {
                    typeof presentations !== 'undefined' && presentations.length === 0 ?
                        <p style={{textAlign: 'center'}}>No presentations found.</p> :
                        <PresentationsList presentations={presentations} type={"paginated or infiniteScroll"}/>
                }
            </Loader>
        )
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(VisiblePresentations)