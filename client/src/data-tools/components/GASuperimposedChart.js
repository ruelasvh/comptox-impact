/**
 * Created by Victor H. Ruelas-Rivera on 4/24/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';

class GASuperimposedChart extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        // Set some global Chart.js defaults.
        Chart.defaults.global.animationSteps = 60;
        Chart.defaults.global.animationEasing = 'easeInOutQuart';
        Chart.defaults.global.responsive = true;
        Chart.defaults.global.maintainAspectRatio = false;

        // this.renderYearOverYearChart();
    }

    makeCanvas(id) {
        var container = document.getElementById(id);
        // var canvas = document.createElement('canvas');
        // var ctx = canvas.getContext('2d');
        //
        // container.innerHTML = '';
        // canvas.width = container.offsetWidth;
        // canvas.height = container.offsetHeight;
        // container.appendChild(canvas);
        //
        // return ctx;
        return container;
    }

    escapeHtml(str) {
        var div = document.createElement('div');
        div.appendChild(document.createTextNode(str));
        return div.innerHTML;
    }

    generateLegend(id, items) {
        var _this = this;
        var legend = document.getElementById(id);
        legend.innerHTML = items.map(function(item) {
            var color = item.color || item.fillColor;
            var label = item.label;
            return '<li><i style="background:' + color + '"></i>' +
                _this.escapeHtml(label) + '</li>';
        }).join('');
    }


    renderYearOverYearChart() {
        new Chart(this.makeCanvas('chart-2-container'), {
            type: 'line',
            data: this.props.data
        });
        this.generateLegend('legend-2-container', this.props.data.datasets);
    }

    render() {
        console.log('The state now is: ', this.props.data);

        return (
            <div>
                <h3>This Year vs Last Year (by users)</h3>
                <canvas id="chart-2-container" width="400" height="400"></canvas>
                <ol id="legend-2-container"></ol>
            </div>
        )
    }

    componentDidUpdate() {
        // this.renderYearOverYearChart();
    }

}

export default GASuperimposedChart;