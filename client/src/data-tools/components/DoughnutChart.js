/**
 * Created by Victor H. Ruelas-Rivera on 5/18/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { Doughnut } from 'react-chartjs-2';
import { Nav, NavItem, Tab } from 'react-bootstrap';
import colorbrewer from 'colorbrewer';

const DoughnutChart = ({ data }) => {

  if(data.length === 0) {
    return <div>There is no data. ¯\_(ツ)_/¯</div>;
  }
  const blacklist = ['unknown.unknown', '(not set)', 'verizon.net', 'rr.com', 'comcastbusiness.net', 'comcast.net', 'com', 'cox.net', 'virginm.net', 'att.net'];

  data.forEach(domain => domain.filter = blacklist.includes(domain.name))

  let domains = data.slice(0, 36);
  let filtered = data.filter(domain => !domain.filter).slice(0, 36);
  let other = data.filter(domain => domain.filter).slice(0, 36);

  const colors = [
    ...colorbrewer.Set3['12'],
    ...colorbrewer.Set3['12'],
    ...colorbrewer.Set3['12']
  ];
  const domainsData = {
    labels: domains.map(domain => domain.name),
    datasets: [{
      data: domains.map(obj => obj.count),
      backgroundColor: colors,
      hoverBackgroundColor: colors,
    }]
  };
  const filteredData = {
    labels: filtered.map(domain => domain.name),
    datasets: [{
      data: filtered.map(obj => obj.count),
      backgroundColor: colors,
      hoverBackgroundColor: colors,
    }]
  };
  const otherData = {
    labels: other.map(domain => domain.name),
    datasets: [{
      data: other.map(obj => obj.count),
      backgroundColor: colors,
      hoverBackgroundColor: colors,
    }]
  };

  const options = {
    title: {
      display: true,
      text: 'User Domains'
    },
    legend: {
      display: false
    }
  };

  return (
    <Tab.Container id="domains-filter" defaultActiveKey="all">
      <div>
        User Domain List:
        <Nav bsStyle="pills">
          <NavItem eventKey="all">All Domains</NavItem>
          <NavItem eventKey="filtered">Filtered Domains</NavItem>
          <NavItem eventKey="other">Anonymous and Private Users</NavItem>
        </Nav>
        <Tab.Content animation>
          <Tab.Pane eventKey="all">
            <Doughnut data={domainsData} options={options}/>
          </Tab.Pane>
          <Tab.Pane eventKey="filtered">
            <Doughnut data={filteredData} options={options}/>
          </Tab.Pane>
          <Tab.Pane eventKey="other">
            <Doughnut data={otherData} options={options}/>
          </Tab.Pane>
        </Tab.Content>
      </div>
    </Tab.Container>
  )
};

DoughnutChart.propTypes = {
    data: React.PropTypes.array.isRequired,
};

export default DoughnutChart;
