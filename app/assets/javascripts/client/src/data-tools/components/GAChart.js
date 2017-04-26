/**
 * Created by Victor H. Ruelas-Rivera on 4/24/17.
 * US EPA National Center for Computational Toxicology
 */
import React, { PropTypes } from 'react';

class GAChart extends React.Component {
    constructor(props) {
        super(props);
    }

    appendDashboard() {
        var _this = this;

        if (window == null) {
            return;
        }
        window.gapi.analytics.ready(function () {
            // Chart for displaying unique pages views
            var chart = new window.gapi.analytics.googleCharts.DataChart({
                reportType: 'ga',
                query: {
                    ids: _this.props.tableId,
                    metrics: _this.props.metrics,
                    dimensions: _this.props.dimensions,
                    filters: _this.props.filters,
                    'start-date': _this.props.startDate,
                    'end-date': _this.props.endDate,
                    samplingLevel: (_this.props.samplingLevel ? _this.props.samplingLevel : 'DEFAULT')
                },
                chart: {
                    container: _this.props.chartId,
                    type: _this.props.chartType,
                    options: {
                        width: (_this.props.width ? _this.props.width : '100%'),
                        title: _this.props.chartTitle
                    }
                }
            });

            // Load chart
            chart.execute();
        })
    }

    componentDidUpdate() {
        this.appendDashboard();
    }

    render() {
        return <div id={this.props.chartId}></div>
    }
}

export default GAChart;