/**
 * Created by Victor H. Ruelas-Rivera on 4/26/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { Line } from 'react-chartjs-2';
import moment from 'moment';

class LineChartJS extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            data: {}
        };
        // Bindings
        this.queryGAPI = this.queryGAPI.bind(this);
    }

    queryGAPI() {
        var _this = this;

        try {
            gapi.analytics.ready(function () {
                console.log('queryGAPI called');

                var now = moment();

                var thisYear = query({
                    'ids': _this.props.tableId,
                    'dimensions': _this.props.dimensions,
                    'metrics': _this.props.metrics,
                    'start-date': moment(now).date(1).month(0).format('YYYY-MM-DD'),
                    'end-date': moment(now).format('YYYY-MM-DD')
                });

                var lastYear = query({
                    'ids': _this.props.tableId,
                    'dimensions': _this.props.dimensions,
                    'metrics': _this.props.metrics,
                    'start-date': moment(now).subtract(1, 'year').date(1).month(0)
                        .format('YYYY-MM-DD'),
                    'end-date': moment(now).date(1).month(0).subtract(1, 'day')
                        .format('YYYY-MM-DD')
                });

                Promise.all([thisYear, lastYear]).then(function (results) {
                    console.log("Promise.all");
                    console.dir(results);

                    var data1 = results[0].rows.map(function (row) {
                        return +row[2];
                    });
                    var data2 = results[1].rows.map(function (row) {
                        return +row[2];
                    });
                    var labels = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                        'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

                    // Ensure the data arrays are at least as long as the labels array.
                    // Chart.js bar charts don't (yet) accept sparse datasets.
                    for (var i = 0, len = labels.length; i < len; i++) {
                        if (data1[i] === undefined) data1[i] = null;
                        if (data2[i] === undefined) data2[i] = null;
                    }

                    var data = {
                        labels: labels,
                        datasets: [
                            {
                                label: 'Last Year',
                                backgroundColor: 'rgba(151,187,205,0.5)',
                                borderColor: 'rgba(151,187,205,1)',
                                data: data2
                            },
                            {
                                label: 'This Year',
                                backgroundColor: 'rgba(75,192,192,0.4)',
                                borderColor: 'rgba(75,192,192,1)',
                                data: data1
                            }
                        ]
                    };

                    _this.setState({
                        data: data
                    }, console.log("fetched data", data));

                }).catch(function (err) {
                    console.error(err.stack);
                });

                function query(params) {
                    return new Promise(function (resolve, reject) {
                        var data = new gapi.analytics.report.Data({query: params});
                        data.once('success', function (response) {
                            resolve(response);
                        })
                            .once('error', function (response) {
                                reject(response);
                            })
                            .execute();
                    });
                }
            });
        }
        catch (err) {
            console.error('Need to load google analytics api first.');
        }
    }

    componentDidMount() {
        this.queryGAPI();
    }

    render() {
        return (
            <div>
                <p style={{"fontSize": "20px"}}>{this.props.title}</p>
                <Line data={this.state.data} />
            </div>
        )
    }
}

export default LineChartJS;