/**
 * Created by Victor H. Ruelas-Rivera on 3/29/17.
 * US EPA National Center for Computational Toxicology
 */

const State = {
    isFetching: false,
    lastUpdated: Date.now(),
    byId: {},
    allIds: [],
};

export default State;