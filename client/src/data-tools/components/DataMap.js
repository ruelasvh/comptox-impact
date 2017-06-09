import React from 'react';

export default class Datamap extends React.Component {

    static propTypes = {
        arc: React.PropTypes.array,
        arcOptions: React.PropTypes.object,
        bubbleOptions: React.PropTypes.object,
        bubbles: React.PropTypes.array,
        graticule: React.PropTypes.bool,
        labels: React.PropTypes.bool
    };

    constructor(props) {
        super(props);
        window.addEventListener('resize', this.resize);
    }

    resize = () => {
        if (this.map) {
            this.map.resize();
        }
    }
    componentDidMount() {
        this.drawMap();
    }

    componentWillReceiveProps() {
        this.clear();
    }

    componentDidUpdate() {
        this.drawMap();
    }

    componentWillUnmount() {
        this.clear();
        window.removeEventListener('resize', this.resize);
    }

    clear = () => {
        const container = this.refs.container;

        for (const child of Array.from(container.childNodes)) {
            container.removeChild(child);
        }
    }

  drawMap = () => {
    if(this.props.scope) {
      const scope = this.props.scope === 'world' ? 'world.hires' : this.props.scope
      let Datamaps = require('datamaps/dist/datamaps.' + scope + '.min.js');
      var map = new Datamaps(Object.assign({}, {
        ...this.props
      }, {
        element: this.refs.container,
        projection: 'mercator',
        responsive: true
      }));

      if (this.props.arc) {
        map.arc(this.props.arc, this.props.arcOptions);
      }

      if (this.props.bubbles) {
        map.bubbles(this.props.bubbles, this.props.bubbleOptions);
      }

      if (this.props.graticule) {
        map.graticule();
      }

      if (this.props.labels) {
        map.labels();
      }

      this.map = map;
    }
  }

    render() {
        const style = {
            position: 'relative',
            width: '80%',
            height: '60%'
        };

        return <div ref="container" style={style}></div>;
    }

}
