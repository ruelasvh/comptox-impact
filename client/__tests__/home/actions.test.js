/**
 * Created by Victor H. Ruelas-Rivera on 3/24/17.
 * US EPA National Center for Computational Toxicology
 */
import configureMockStore from 'redux-mock-store'
import thunk from 'redux-thunk'
import { fetchHomeDataIfNeeded, REQUEST_HOME, RECEIVE_HOME } from '../../src/home/actions'
import { relativePath } from '../../src/App'
import nock from 'nock'
import data from '../../mocks/homeMock'

const middlewares = [thunk]
const mockStore = configureMockStore(middlewares)

Date.now = jest.fn(() => 1482363367071);

describe('async actions', () => {
    afterEach(() => {
        nock.cleanAll()
    })

    it('created RECEIVE_HOME when fetching home data has been done', () => {
        nock(`http://localhost:3000${relativePath}/api`)
            .get('/home')
            .reply(200, data)

        const expectedActions = [
            { type: REQUEST_HOME },
            { type: RECEIVE_HOME, data, receivedAt: Date.now()}
        ]
        const store = mockStore({
            simpleHomeData: {
                isFetching: false,
                lastUpdated: Date.now(),
                homeData: {}
            }
        })

        return store.dispatch(fetchHomeDataIfNeeded())
            .then(() => {
                expect(store.getActions()).toEqual(expectedActions)
            })
    })
})