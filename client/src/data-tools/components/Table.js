/**
 * Created by vruelasr on 8/1/17.
 */
import React from 'react';
import PropTypes from 'prop-types';
import { Table } from 'react-bootstrap';

const UsersTable = ({ data }) => {
    return (
        <Table>
            <thead>
                <tr>
                    <th>Year</th>
                    <th>New Users</th>
                    <th>Returning Users</th>
                </tr>
            </thead>
            <tbody>
            {data.map(entry => {
                return (
                    <tr>
                        <td>{entry.timeperiod}</td>
                        <td>{entry.data.rows[0][1]}</td>
                        <td>{entry.data.rows[1][1]}</td>
                    </tr>
                )
            })}
            </tbody>
        </Table>
    )
}

Table.propTypes = {
    data: PropTypes.array.isRequired
}

export default UsersTable;