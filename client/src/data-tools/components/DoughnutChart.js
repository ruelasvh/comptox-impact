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
  const blacklistTerms = ['at&t', 'ipv4', 'comcast', 'time warner', 'internet service provider', 'verizon', 'telecom', 'broadband'];
  const blacklist = ['unknown.unknown', '(not set)', 'verizon.net', 'rr.com', 'com', 'cox.net', 'virginm.net', 'att.net'];
  const blacklistFtpLogs = ['AT&T U-verse', 'Deutsche Telekom AG', 'Oi Internet', 'AT&T Wireless', 'Bell Canada',
      'China Telecom jiangsu', 'China Unicom Shannxi', 'Forcepoint Cloud', 'NET Virtua', 'Spectrum', 'Verizon Fios', 'Verizon Fios Business', 'China Unicom Liaoning', 'BT',
      'China Telecom', 'M-net', 'Telecom Italia', 'Amazon.com', 'Cox Communications', 'Frontier Communications', 'Tata Communications', 'Telstra Internet', 'Virgin Media', 'HiNet',
      'Korea Telecom', 'NET Virtua','Orange','Symantec.cloud','Telmex','tw telecom holdings','Vivo','O2 Deutschland', 'A-STAR','Algar Telecom S/a','AT&T Data Communications Services',
      'AT&T Enhanced Network Services','AT&T Internet Services','AT&T Services','BASF Corporation','Bayer Business Services GmbH','Beta Telecom Co.Ltd.','Bharti Airtel Ltd., TELEMEDIA Services, for SMB cu',
      'Bouygues Telecom','BP America','Data Mobile Cote D\'ivoire','DELTA Broadband Network','Fastweb','FASTWEB SPA','COLT Technology Services Group Limited','China Telecom Shanghai',
      'China Unicom Beijing','China Unicom Shanghai network','Cogent Communications','GONET','Google Cloud','HETZNER','Hetzner Online AG','Hilltop Broadband','Amazon',
      'Skynet Belgium','Vodafone DSL','China Telecom Beijing','China Telecom Guangdong','Parsonline','Telefonica de Espana','China Mobile','China Telecom fujian','China Unicom Shandong',
      'Comnet Bulgaria Holding Ltd.','i3d B.V.','LG DACOM Corporation','Optimum Online','Orange Polska','RCS & RDS Residential','Reliance Communications','Sprint PCS',
      'Telus Communications','Turk Telekom','Verizon Wireless','Versatel Deutschland','Windstream Communications','Zscaler Switzerland GmbH','Zscaler','Bluewin','CenturyLink',
      'China Telecom Sichuan','China Unicom Guangdong province','China Unicom Shanghai network','China Unicom Shanxi','Free SAS','FreeBit Co.,Ltd.','GTS Telecom SRL',
      'Jazz Telecom S.A.','Johnson & Johnson','Level 3 Communications','Merck KGaA','NFOrce Entertainment B.V.','Open Computer Network','PT Comunicacoes','Shaw Communications',
      'Sify Limited','SolNet','ADISTA SAS', 'Googlebot', 'Google', 'Vodafone Kabel Deutschland', 'Rogers Cable', 'Sky Broadband', 'TalkTalk', 'Scansafe', 'China Telecom Hangzhou',
      'The Dow Chemical Company', 'Vodafone Italia DSL', 'Jio', 'NTT', 'KPN', 'NKN Core Network', 'WIND Telecomunicazioni S.p.A', 'Softbank BB']
  const aggregatedBlacklist = blacklist.concat(blacklistFtpLogs)
  
  // First filter out using SAFE blacklist terms
  data.forEach(domain => domain.filter = blacklistTerms.some(item => domain.name.toLowerCase().includes(item)))
  // Then further filter out with full organization names
  data.forEach(domain => domain.filter = domain.filter || aggregatedBlacklist.includes(domain.name))

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
      text: 'Organizations Accessing Data'
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
