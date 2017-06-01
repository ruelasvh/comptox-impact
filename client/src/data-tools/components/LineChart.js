/**
 * Created by Victor H. Ruelas-Rivera on 5/16/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import moment from 'moment';
import { Line } from 'react-chartjs-2';

const LineChart = ({ data }) => {

  if(!data.hasOwnProperty('rows') || data.rows.length === 0) {
    return <div>There is no data. ¯\_(ツ)_/¯</div>;
  }

  let thisyear = moment().year();
  let years = [];
  let colors = ['rgba(166,206,227,', 'rgba(31,120,180,', 'rgba(178,223,138,', 'rgba(51,160,44,'];
  for(let i = 0; i < 4; i++) {
    years.push({ year: thisyear - i, weeks: new Array(53), color: colors[i]});
  }
  let labels = new Array(53);
  labels[0] = 'Jan';
  labels[4] = 'Feb';
  labels[8] = 'Mar';
  labels[13] = 'Apr';
  labels[17] = 'May';
  labels[22] = 'Jun';
  labels[26] = 'Jul';
  labels[30] = 'Aug';
  labels[35] = 'Sep';
  labels[39] = 'Oct';
  labels[43] = 'Nov';
  labels[48] = 'Dec';
  labels[52] = '';

  let sum = 0;
  data.rows.forEach(row => {
    const date = moment(row[0]);
    const day = date.dayOfYear();
    let dateYear = years.filter((year) => year.year === date.year())[0];
    if (dateYear) {
      sum += parseInt(row[1]);
      if (day % 7 === 0) {
        dateYear.weeks[(day / 7) - 1] = sum / 7;
        sum = 0;
      } else if (day === 365 + date.isLeapYear()) {
        dateYear.weeks[53] = sum / (day % 7);
        sum = 0;
      }
    }
  });

  const relevantyears = years.filter((year) => year.weeks.some((count) => count > 0));

  const weekPoints = relevantyears.map(function(year) {
      return {
        label: year.year,
        fill: false,
        lineTension: 0.1,
        backgroundColor: year.color + '1)',
        borderColor: year.color + '1)',
        borderCapStyle: 'butt',
        borderDash: [],
        borderDashOffset: 0.0,
        borderJoinStyle: 'miter',
        pointBorderColor: year.color + '1)',
        pointBackgroundColor: '#fff',
        pointBorderWidth: 1,
        pointHoverRadius: 1,
        pointHoverBackgroundColor: year.color + '1)',
        pointHoverBorderColor: 'rgba(220,220,220,1)',
        pointHoverBorderWidth: 1,
        pointRadius: 1,
        pointHitRadius: 1,
        spanGaps: true,
        data: year.weeks
      };
  });
  const options = {
    labels: labels,
    datasets: weekPoints
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
