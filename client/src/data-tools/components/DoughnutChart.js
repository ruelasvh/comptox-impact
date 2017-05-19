/**
 * Created by Victor H. Ruelas-Rivera on 5/18/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { Doughnut } from 'react-chartjs-2';

const DoughnutChart = ( { data, label }) => {
    let govCounter = 0, eduCounter = 0, comCounter = 0, otherCounter = 0;

    data.rows.forEach(row => {
        if (row[0].includes("gov")) {
            govCounter += 1
        } else if (row[0].includes("edu")) {
            eduCounter += 1
        } else if (row[0].includes("com")) {
            comCounter += 1
        } else {
            otherCounter += 1;
        }
    });

    let totalUsers = govCounter + eduCounter + comCounter + otherCounter;

    const curData = {
        labels: [
            'gov',
            'edu',
            'com',
            'other'
        ],
        datasets: [{
            data: [
                (govCounter/totalUsers).toFixed(2)*100,
                (eduCounter/totalUsers).toFixed(2)*100,
                (comCounter/totalUsers).toFixed(2)*100,
                (otherCounter/totalUsers).toFixed(2)*100
            ],
            backgroundColor: [
                '#FF6384',
                '#36A2EB',
                '#FFCE56',
                '#AACE56'
            ],
            hoverBackgroundColor: [
                '#FF6384',
                '#36A2EB',
                '#FFCE56',
                '#AACE56'
            ],
        }]
    };

    const options = {
        title: {
            display: true,
            text: 'User Types By Domain (1 year)'
        },
        tooltips: {
            callbacks: {
                label: function(tooltipItem, data) {
                    //get the concerned dataset
                    var dataset = data.datasets[tooltipItem.datasetIndex];
                    //calculate the total of this data set
                    var total = dataset.data.reduce(function(previousValue, currentValue, currentIndex, array) {
                        return previousValue + currentValue;
                    });
                    //get the current items value
                    var currentValue = dataset.data[tooltipItem.index];
                    //calculate the precentage based on the total and current item, also this does a rough rounding to give a whole number
                    var precentage = Math.floor(((currentValue/total) * 100)+0.5);

                    return precentage + "%";
                }
            }
        }
    };

    return (
        <div>
            <Doughnut data={curData} options={options}/>
        </div>
    )
};

DoughnutChart.propTypes = {
    data: React.PropTypes.object.isRequired,
};

export default DoughnutChart;