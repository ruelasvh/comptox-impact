/**
 * Created by Victor H. Ruelas-Rivera on 4/21/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';

class CDNetworkDomainChart extends React.Component {
    constructor(props) {
        super(props);
    }

    appendDashboard() {
        if (window == null) {
            return;
        }
        window.gapi.analytics.ready(function () {
            // Chart for displaying unique pages views
            var networkDomainChart = new window.gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: 'ga:69871570',
                    metrics: 'ga:users',
                    dimensions: 'ga:networkDomain',
                    filters: 'ga:pagePath==epa.gov/chemical-research/downloadable-computational-toxicology-data',
                    'start-date': '365daysAgo',
                    'end-date': 'yesterday',
                    samplingLevel: 'HIGHER_PRECISION'
                },
                chart: {
                    container: 'comptox-user-domain-chart-container',
                    type: 'TABLE',
                    options: {
                        width: '100%',
                        title: 'User Domain'
                    }
                }
            });

            // Load chart
            networkDomainChart.execute();
        })
    }

    componentDidUpdate() {
        this.appendDashboard();
    }

    render() {
        return <div id="comptox-user-domain-chart-container"></div>
    }
}

export default CDNetworkDomainChart;