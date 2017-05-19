/**
 * Created by Victor H. Ruelas-Rivera on 5/16/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { Line } from 'react-chartjs-2';

const LineChart = ({ data, label }) => {

        let labels = [];
        let points = [];

        data.rows.forEach(row => {
            labels.push(row[0]);
            points.push(row[1]);
        });

        const options = {
            labels: labels,
            datasets: [
                {
                    label: label,
                    fill: false,
                    lineTension: 0.1,
                    backgroundColor: 'rgba(75,192,192,0.4)',
                    borderColor: 'rgba(75,192,192,1)',
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    pointBorderColor: 'rgba(75,192,192,1)',
                    pointBackgroundColor: '#fff',
                    pointBorderWidth: 1,
                    pointHoverRadius: 5,
                    pointHoverBackgroundColor: 'rgba(75,192,192,1)',
                    pointHoverBorderColor: 'rgba(220,220,220,1)',
                    pointHoverBorderWidth: 2,
                    pointRadius: 1,
                    pointHitRadius: 10,
                    data: points
                }
            ]
        };

        return (
            <div>
                <Line data={options}/>
            </div>
        )
};

LineChart.propTypes = {
    data: React.PropTypes.object.isRequired,
};

export default LineChart;