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
  let colors = ['rgba(166,206,227,1)', 'rgba(31,120,180,1)', 'rgba(178,223,138,1)', 'rgba(51,160,44,1)'];
  for(let i = 0; i < 4; i++) {
    years.push({ year: thisyear - i, points: new Array(12), color: colors[i]});
  }
  let labels = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

  data.rows.forEach(row => {
    const rowYear = parseInt(row[0].slice(0,4));
    const rowMonth = parseInt(row[0].slice(4));
    const currentYear = years.filter((year) => year.year === rowYear)[0];
    if(currentYear) {
      currentYear.points[rowMonth - 1] = row[1];
    }
  });

  const options = {
    labels: labels,
    datasets: years.map(function(year) {
      return {
        label: year.year,
        fill: false,
        lineTension: 0.1,
        backgroundColor: year.color,
        borderColor: year.color,
        borderCapStyle: 'butt',
        borderDash: [],
        borderDashOffset: 0.0,
        borderJoinStyle: 'miter',
        pointBorderColor: year.color,
        pointBackgroundColor: '#fff',
        pointBorderWidth: 1,
        pointHoverRadius: 5,
        pointHoverBackgroundColor: year.color,
        pointHoverBorderColor: 'rgba(220,220,220,1)',
        pointHoverBorderWidth: 1,
        pointRadius: 2,
        pointHitRadius: 10,
        data: year.points
      };
    })
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
