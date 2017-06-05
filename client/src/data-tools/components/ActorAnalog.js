import React from 'react'
import { FormControl, Button } from 'react-bootstrap'
import moment from 'moment'
import { connect } from 'react-redux';

let analogStart = moment('9-1-2009')
let analogEnd = moment().subtract(2, 'days')
let dates = []
let months = []
let year = {}
let month = ''

while (analogEnd > analogStart) {
  let year = dates.filter((year) => year.year === analogStart.year())[0]
  if(!year) {
    year = { year: analogStart.year(), months: [] }
    dates.push(year)
  }
  year.months.push(analogStart.format('MMMM'))
  analogStart.add(1,'month')
}
dates.reverse()
year = dates[0]
months = year.months
month = months[months.length - 1]

class ActorAnalog extends React.Component {
  constructor() {
    super();

    this.state = { dates, months, month, year };

    this.loadYear = this.loadYear.bind(this);
    this.loadMonth = this.loadMonth.bind(this);
  }
  loadYear(e) {
    let year = dates.filter((year) => year.year === parseInt(e.target.value))[0]
    let months = year.months
    let month = months[0]
    this.setState({ year, months, month })
  }
  loadMonth(e) {
    let month = e.target.value
    this.setState({ month })
  }
  render() {
    let src = 'https://actor.epa.gov/reports/' + this.state.month + '_' + this.state.year.year + '.html';
    return (
      <div>
      <FormControl componentClass="select" onChange={this.loadYear}>
      {this.state.dates.map((year) => <option value={year.year} key={year.year}>{year.year}</option>)}
      </FormControl>
      <div className="buttonContainer">
      {this.state.months.map((month) => <Button value={month} onClick={this.loadMonth} key={month}>{month}</Button>)}
      </div>
      <br/>
      <iframe style={{width: '100%', height: '400px'}} src={src} />
      </div>
    );
  }
}

export default ActorAnalog;
