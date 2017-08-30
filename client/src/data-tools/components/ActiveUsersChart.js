/**
 * Created by vruelasr on 8/29/17.
 */
import React from 'react';
import PropTypes from 'prop-types';
import moment from 'moment';
import { Line } from 'react-chartjs-2';

const Chart = ({ data, label }) => {
  
  if(!data.hasOwnProperty('rows') || data.rows.length === 0) {
    return <div>There is no data. ¯\_(ツ)_/¯</div>;
  }
  
  let thisyear = moment().year();
  let years = [];
  let colors = ['rgba(166,206,227,', 'rgba(31,120,180,', 'rgba(178,223,138,', 'rgba(51,160,44,'];
  for(let i = 0; i < 4; i++) {
    years.push({ year: thisyear - i, months: new Array(12), color: colors[i]});
  }
  let labels = new Array(12).fill(0).map((v, i) => moment().month(i).format('MMMM'));
  
  data.rows.forEach(row => {
    const date = moment(row[0]);
    let dateYear = years.filter((year) => year.year === date.year())[0];
    if (dateYear) {
      // Check if date is end of month and store total counts for that month
      if (date.date() === date.daysInMonth()) {
        dateYear.months[date.month()] = parseInt(row[1]);
      }
    }
  });
  
  
  const relevantyears = years.filter((year) => year.months.some((count) => count > 0));
  
  const monthsPoints = relevantyears.map(function(year) {
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
      pointRadius: 2,
      pointHitRadius: 3,
      spanGaps: true,
      data: year.months
    };
  });
  
  const options = {
    title: {
      display: true,
      text: label
    }
  };
  
  const points = {
    labels: labels,
    datasets: monthsPoints
  };
  
  return (
    <div>
      <Line data={points} options={label !== undefined ? options : {}}/>
    </div>
  )
};

Chart.propTypes = {
  data: React.PropTypes.object.isRequired,
  label: PropTypes.string
};

export default Chart;