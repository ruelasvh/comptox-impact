/**
 * Created by Victor H. Ruelas-Rivera on 5/16/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import moment from 'moment';
import { Bar } from 'react-chartjs-2';

const LineChart = ({ data }) => {

  if(!data.hasOwnProperty('rows') || data.rows.length === 0) {
    return <div>There is no data. ¯\_(ツ)_/¯</div>;
  }

  let thisyear = moment().year();
  let years = [];
  let colors = ['rgba(166,206,227,', 'rgba(31,120,180,', 'rgba(178,223,138,', 'rgba(51,160,44,'];
  for(let i = 0; i < 4; i++) {
    years.push({ year: thisyear - i, weeks: new Array(53), months: new Array(53), color: colors[i]});
  }
  let labels = new Array(53).fill(0).map((v,i) => moment().dayOfYear(i * 7 + 1));

  let weeksum = 0;
  let monthsum = 0;
  data.rows.forEach(row => {
    const date = moment(row[0]);
    const day = date.dayOfYear();
    let dateYear = years.filter((year) => year.year === date.year())[0];
    if (dateYear) {
      weeksum += parseInt(row[1]);
      monthsum += parseInt(row[1]);
      if (day % 7 === 0) {
        dateYear.weeks[(day / 7) - 1] = weeksum;
        weeksum = 0;
      } else if (day === 365 + date.isLeapYear()) {
        weeksum = 0;
      }
      if (date.date() === date.daysInMonth()) {
        dateYear.months[parseInt(date.month() * 4.3) + 2] = monthsum;
        monthsum = 0;
      }
    }
  });

  const relevantyears = years.filter((year) => year.weeks.some((count) => count > 0));

  const weekPoints = relevantyears.map(function(year) {
      return {
        label: year.year + " (week)",
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
        data: year.weeks,
        type: 'line'
      };
  });
  const monthBars = relevantyears.map(function(year) {
    return {
      label: year.year + " (month)",
      backgroundColor: year.color + '.4)',
      borderColor: year.color + '.4)',
      borderWidth: 1,
      hoverBackgroundColor: year.color + '.4)',
      hoverBorderColor: year.color + '.4)',
      data: year.months,
      type: 'bar',
      options: {
        legend: {
          display: false
        }
      }
    };
  });

  const linedata = {
    labels: labels,
    datasets: weekPoints.concat(monthBars)
  };
  const options = {
    scales: {
      xAxes: [{
        type: 'time',
        time: {
          tooltipFormat: "MMM",
          unit: "month",
          displayFormats: {
            'millisecond': 'MMM',
            'second': 'MMM',
            'minute': 'MMM',
            'hour': 'MMM',
            'day': 'MMM',
            'week': 'MMM',
            'month': 'MMM',
            'quarter': 'MMM',
            'year': 'MMM'
          }
        }
      }]
    }
  };

  return (
    <div>
    <Bar data={linedata} options={options}/>
    </div>
  )
};

LineChart.propTypes = {
    data: React.PropTypes.object.isRequired,
};

export default LineChart;
