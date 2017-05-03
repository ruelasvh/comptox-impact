/**
 * Created by Victor H. Ruelas-Rivera on 3/27/17.
 * US EPA National Center for Computational Toxicology
 */
'use strict'

import reducer from '../../src/home/reducers'
import initialState from '../../src/home/model'
import { REQUEST_HOME, RECEIVE_HOME } from '../../src/home/actions'

Date.now = jest.fn(() => 1482363367071);

describe('home reducer', () => {
    it('should return the initial state', () => {
        expect(
            reducer(initialState, {})
        ).toEqual(initialState)
    })

    it('should handle REQUEST_HOME', () => {
        expect(reducer({}, {
            type: REQUEST_HOME
        })).toEqual({
            isFetching: true
        })
    })

    it('should handle RECEIVE_HOME', () => {
        expect(reducer(initialState, {
            type: RECEIVE_HOME,
            data: {test: "data"},
            receivedAt: 1482363367071
        })).toEqual({
            isFetching: false,
            lastUpdated: 1482363367071,
            homeData: {test: "data"}
        })
    })
})