import React from 'react'
import { FormControl, Button } from 'react-bootstrap'
import moment from 'moment'
import { connect } from 'react-redux';

const years = [ '2009', '2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017' ];
const yearsRev = [].concat(years).reverse();
const months = [ 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December' ];
let dateObj = {};

class ActorAnalog extends React.Component {
  constructor() {
    super();
    this.state = {months: [], year: yearsRev[0], month: 0};

    this.loadYear = this.loadYear.bind(this);
    this.loadMonth = this.loadMonth.bind(this);
  }
  loadYear(e) {
    this.setState({year: e.target.value, month: 0, months: dateObj[e.target.value].map(month => months[month])});
  }
  loadMonth(e) {
    this.setState({month: months.indexOf(e.target.value)});
  }
  componentDidMount() {
    let month = 8;
    for (let i = 0; i < years.length; month++) {
      if(!dateObj.hasOwnProperty(years[i])) {
        dateObj[years[i]] = [];
      }
      if(years[i] === '2017' && month > 4) {
        break;
      }
      dateObj[years[i]].push(month);
      if(month === 11) {
        month = -1;
        i++;
      }
    }
    this.setState({month: dateObj[yearsRev[0]].length - 1, months: dateObj[yearsRev[0]].map(month => months[month])});
  }
  render() {
    let src = 'https://actor.epa.gov/reports/' + months[this.state.month] + '_' + this.state.year + '.html';
    return (
      <div>
      <FormControl componentClass="select" onChange={this.loadYear}>
      {yearsRev.map((year) => <option value={year} key={year}>{year}</option>)}
      </FormControl>
      <div className="buttonContainer">
      {this.state.months.map((month) => <Button value={month} onClick={this.loadMonth} key={month}>{month}</Button>)}
      </div>
      <iframe style={{width: '100%', height: '400px'}} src={src} />
      </div>
    );
  }
}

export default ActorAnalog;
