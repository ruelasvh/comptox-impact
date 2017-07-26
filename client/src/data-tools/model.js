/**
 * Created by Victor H. Ruelas-Rivera on 4/26/17.
 * US EPA National Center for Computational Toxicology
 */

const Model = {
  analytics: {
    comptoxdashboard: {
      usage: {},
      datadownloads: {},
      filedownloads: {}
    },
    actor: {
      usage: {},
      analog: {}
    },
    cpcat: {
      usage: {}
    },
    edsp21: {
      usage: {}
    },
    toxcast: {
      usage: {},
      datadownloads: {},
      filedownloads: {},
    },
    dsstox: {
      datadownloads: {},
      filedownloads: {}
    }
  },
  lastUpdated: Date.now()
};

export default Model;
