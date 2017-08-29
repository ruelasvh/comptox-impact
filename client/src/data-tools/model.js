/**
 * Created by Victor H. Ruelas-Rivera on 4/26/17.
 * US EPA National Center for Computational Toxicology
 */

const Model = {
  analytics: {
    comptoxdashboard: {
      isFetching: false,
      staleData: true,
      usage: {},
      filedownloads: {}
    },
    actor: {
      isFetching: false,
      staleData: true,
      usage: {},
      analog: {}
    },
    cpcat: {
      isFetching: false,
      staleData: true,
      usage: {}
    },
    edsp21: {
      isFetching: false,
      staleData: true,
      usage: {}
    },
    toxcast: {
      isFetching: false,
      staleData: true,
      usage: {},
      datadownloads: {},
      filedownloads: {},
    },
    dsstox: {
      isFetching: false,
      staleData: true,
      datadownloads: {},
      filedownloads: {}
    },
    comptox: {
      isFetching: false,
      staleData: true,
      datadownloads: {},
      filedownloads: {}
    }
  },
  lastUpdated: Date.now()
};

export default Model;
