/**
 * Created by Victor H. Ruelas-Rivera on 5/16/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import moment from 'moment';
import { Bar } from 'react-chartjs-2';

const BarChart = ({ data }) => {

  if(!data.hasOwnProperty('rows') || data.rows.length === 0) {
    return <div>There is no data. ¯\_(ツ)_/¯</div>;
  }

  let thisyear = moment().year();
  let years = [];
  let colors = ['rgba(166,206,227,', 'rgba(31,120,180,', 'rgba(178,223,138,', 'rgba(51,160,44,'];
  for(let i = 0; i < 4; i++) {
    years.push({ year: thisyear - i, months: new Array(12).fill(0), color: colors[i]});
  }
  let labels = years[0].months.map((v, i) => moment().month(i).format('MMMM'));

  let sum = 0;
  data.rows.forEach(row => {
    const date = moment(row[0]);
    let dateYear = years.filter((year) => year.year === date.year())[0];
    if (dateYear) {
      dateYear.months[date.month()] += parseInt(row[1]);
    }
  });

  const relevantyears = years.filter((year) => year.months.some((count) => count > 0));

  const monthsPoints = relevantyears.map(function(year) {
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
  const options = {
    labels: labels,
    datasets: monthsPoints
  };

  return (
    <div>
    <Bar data={options} />
    </div>
  )
};

BarChart.propTypes = {
    data: React.PropTypes.object.isRequired,
};

export default BarChart;
