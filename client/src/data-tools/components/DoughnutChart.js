/**
 * Created by Victor H. Ruelas-Rivera on 5/18/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import moment from 'moment';
import { Doughnut } from 'react-chartjs-2';

const DoughnutChart = ({ data }) => {

  if(!data.hasOwnProperty('rows') || data.rows.length === 0) {
    return <div>There is no data. ¯\_(ツ)_/¯</div>;
  }
  const blacklist = ['unknown.unknown', '(not set)', 'verizon.net', 'rr.com', 'comcastbusiness.net', 'comcast.net', 'com', 'cox.net', 'virginm.net', 'att.net'];
  let times = {};
  data.rows.forEach(row => {
    if(times.hasOwnProperty(row[1])) {
      times[row[1]].push({ domain: row[0], count: parseInt(row[2]), filter: blacklist.includes(row[0])});
    } else {
      times[row[1]] = [ { domain: row[0], count: parseInt(row[2]), filter: blacklist.includes(row[0])} ];
    }
  });

  let timekeys = Object.keys(times).sort();
  let time = timekeys.length > 1 ? timekeys[timekeys.length - 2] : timekeys[0];
  const byMonth = time.length > 4 ? true : false;
  let domains = times[time];
  let filtered = domains.filter(domain => !domain.filter);
  let other = domains.filter(domain => domain.filter);
  filtered.sort((a, b) => parseInt(b.count) - parseInt(a.count));
  let filteredTotal = filtered.reduce((acc, cur) => acc + cur.count, 0);
  let otherTotal = other.reduce((acc, cur) => acc + cur.count, 0);
  let domainsTotal = domains.reduce((acc, cur) => acc + cur.count, 0);

  const colors = [ '#FF6384', '#36A2EB', '#FFCE56', '#33F499', '#AACE56' ];
  const domainsData = {
    labels: domains.map(domain => domain.domain),
    datasets: [{
      data: domains.map(obj => (obj.count / domainsTotal).toFixed(2) * 100),
      backgroundColor: colors,
      hoverBackgroundColor: colors,
    }]
  };
  const filteredData = {
    labels: filtered.map(domain => domain.domain),
    datasets: [{
      data: filtered.map(obj => (obj.count / filteredTotal).toFixed(2) * 100),
      backgroundColor: colors,
      hoverBackgroundColor: colors,
    }]
  };
  const otherData = {
    labels: other.map(domain => domain.domain),
    datasets: [{
      data: other.map(obj => (obj.count / otherTotal).toFixed(2) * 100),
      backgroundColor: colors,
      hoverBackgroundColor: colors,
    }]
  };

  const timeperiod = byMonth ? moment(time + '01').format('(MMM YYYY)') : '(' + time + ')';
  const options = {
    title: {
      display: true,
      text: 'User Domains ' + timeperiod
    },
    legend: {
      display: false
   /* },
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
      } */
    }
  };

    return (
      <div>
        <Doughnut data={domainsData} options={options}/>
        <Doughnut data={filteredData} options={options}/>
        <Doughnut data={otherData} options={options}/>
      </div>
    )
};

DoughnutChart.propTypes = {
    data: React.PropTypes.object.isRequired,
};

export default DoughnutChart;
