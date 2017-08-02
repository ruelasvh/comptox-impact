/**
 * Created by Victor H. Ruelas-Rivera on 5/16/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import moment from 'moment';
import { Bar, Line } from 'react-chartjs-2';

const Chart = ({ data, type, label }) => {

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

  let monthsum = 0;
  data.rows.forEach(row => {
    const date = moment(row[0]);
    let dateYear = years.filter((year) => year.year === date.year())[0];
    if (dateYear) {
        monthsum += parseInt(row[1]);
        // Check if date is end of month and store total counts for that month
        if (date.date() === date.daysInMonth() || date.format('YYYYMMDD') === moment().format('YYYYMMDD')) {
            dateYear.months[date.month()] = monthsum;
            monthsum = 0;
        }
    }
  });


  const relevantyears = years.filter((year) => year.months.some((count) => count > 0));

  let monthsPoints;
  let options;
  if (type === 'line') {
      monthsPoints = relevantyears.map(function(year) {
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
      options = {
          title: {
              display: true,
              text: label
          }
      };
  } else {
      monthsPoints = relevantyears.map(function(year) {
          return {
              label: year.year,
              backgroundColor: year.color + '1)',
              borderColor: year.color + '1)',
              borderWidth: 1,
              hoverBackgroundColor: year.color + '1)',
              hoverBorderColor: year.color + '1)',
              data: year.months
          };
      });
      options = {}
  }

  const points = {
    labels: labels,
    datasets: monthsPoints
  };

  return (
    <div>
        { type === 'line' ? <Line data={points} options={options}/> : <Bar data={points} options={options}/> }
    </div>
  )
};

Chart.propTypes = {
    data: React.PropTypes.object.isRequired,
};

export default Chart;
