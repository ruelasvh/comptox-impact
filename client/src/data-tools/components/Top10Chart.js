/**
 * Created by Jon Anderson on 7/3/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react'
import { Table } from 'react-bootstrap'
import moment from 'moment'

const Top10Chart = ({ data, timeperiod }) => {

  if(data.length === 0) {
    return <div>There is no data. ¯\_(ツ)_/¯</div>
  }

  const top10list = data.map((file, index) =>
    <tr key={file.name}>
        <td>{index + 1}</td>
        <td>{file.name}</td>
        <td>{file.count}</td>
    </tr>
  )

  return (
    <div>
      {'Top 10 downloads of ' + timeperiod }
      <Table striped bordered condensed>
        <thead>
          <tr>
            <th>Rank</th>
            <th>Filename</th>
            <th>Count</th>
          </tr>
        </thead>
        <tbody>
          {top10list}
        </tbody>
      </Table>
    </div>
  )
}

Top10Chart.propTypes = {
    data: React.PropTypes.array.isRequired,
    timeperiod: React.PropTypes.string.isRequired,
}

export default Top10Chart
