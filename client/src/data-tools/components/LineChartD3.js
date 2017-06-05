/**
 * Created by Victor H. Ruelas-Rivera on 4/26/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import rd3 from 'react-d3-library';
import d3 from 'd3'
const RD3Component = rd3.Component;


class LineChartD3 extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            d3: ''
        };

        this.handleD3 = this.handleD3.bind(this);
    }

    handleD3() {
        var node = document.createElement('div');

// define dimensions of graph
        var m = [80, 80, 80, 80]; // margins
        var w = 800 - m[1] - m[3]; // width
        var h = 400 - m[0] - m[2]; // height

// create a simple data array that we'll plot with a line (this array represents onl the Y values, X will just be the
// index location)
        var data = [3, 6, 2, 7, 5, 2, 0, 3, 8, 9, 2, 5, 9, 3, 6, 3, 6, 2, 7, 5, 2, 1, 3, 8, 9, 2, 5, 9, 2, 7];

// X scale will fit all values from data[] within pixels 0-w
        var x = d3.scale.linear().domain([0, data.length]).range([0, w]);
// Y scale will fit values from 0-10 within pixels h-0 (Note the inverted domain for the y-scale: bigger is up!)
        var y = d3.scale.linear().domain([0, 10]).range([h, 0]);

// create a line function that can convert data[] into x and y points
        var line = d3.svg.line()
        // assign the X function to plot our line as we wish
            .x(function (d, i) {
                // verbose loggin to show what's actually being done
                console.log('Plotting X value for data point: ' + d + ' using index: ' + i + ' to be at: ' + x(i) + ' using our xScale.');
                // return the X coordinate where we want to plot datapoint
                return x(i);
            })
            .y(function(d) {
                // verbose logging to show what's actually being done
                console.log('Plotting Y value for data point: ' + d + ' to be at: ' + y(d) + " using our yScale.");
                // return the Y coordinate where we want to plot this datapoint
                return y(d);
            });

// Add an SVG element with the desired dimensions and margin.
        var graph = d3.select(node).append("svg:svg")
            .attr("width", w + m[1] + m[3])
            .attr("height", h + m[0] + m[2])
            .append("svg:g")
            .attr("transform", "translate(" + m[3] + "," + m[0] + ")");

// create yAxis
        var xAxis = d3.svg.axis().scale(x).tickSize(-h).tickSubdivide(true);
// Add the x-axis.
        graph.append("svg:g")
            .attr("class", "x axis")
            .attr("transform", "translate(0," + h + ")")
            .call(xAxis);

// create left yAxis
        var yAxisLeft = d3.svg.axis().scale(y).ticks(4).orient("left");
// Add the y-axis to the left
        graph.append("svg:g")
            .attr("class", "y axis")
            .attr("transform", "translate(-25,0)")
            .call(yAxisLeft);

// Add the line by appending an svg:path element with the data line we created above
// do this AFTER the axes above so that the line is above the tick-lines
        graph.append("svg:path").attr("d", line(data));

        this.setState({
            d3: node
        });

    }

    componentDidMount() {
        this.handleD3();
    }

    render() {
        console.log('d3 object', this.state);
        return (
            <div>
                <RD3Component data={this.state.d3}/>
            </div>
        )
    }
}

export default LineChartD3;
