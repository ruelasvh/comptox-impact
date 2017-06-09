/**
 * Created by Victor H. Ruelas-Rivera on 4/26/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react'
import Datamap from './DataMap'
import d3 from 'd3'
import iso3166 from './iso3166Converter'

export default class MapView extends React.Component {
  constructor(props) {
    super(props);

    let data = props.data
    let scope = props.scope
    if(data.hasOwnProperty('rows') && data.rows.length !== 0) {
      var dataset = {};
      var onlyValues = data.rows.map(function(obj) {
        return obj[2];
      });
      var minValue = Math.min.apply(null, onlyValues),
        maxValue = Math.max.apply(null, onlyValues);

      var paletteScale = d3.scale.linear().domain([minValue, maxValue]).range(["#ffe0cc", "#ff471a"]);
      data.rows.forEach(function(item) {
        let iso;
        if(scope === 'usa') {
          iso = item[0].slice(3)
        } else if (scope === 'world') {
          iso = iso3166['2to3'][item[0]]
        }
          let year = item[1],
          value = item[2];
        dataset[iso] = {
          numberOfThings: value,
          fillColor: paletteScale(value),
          year: year
        };
      });
      this.state = {
        scope: scope,
        allData: dataset,
        data: dataset,
        fills: {
          defaultFill: '#ddd'
        },
        geographyConfig: {
          borderColor: '#888',
          borderWidth: .5,
          highlightBorderWidth: .5,
          highlightBorderColor: 'black',
          highlightFillColor: function(geo) {
            return geo['fillColor'] || '#ddd';
          },
          popupTemplate: function(geo, data) {
            if (!data) {
              return;
            }
            return [
              '<div class="hoverinfo">',
              '<strong>',
              geo.properties.name,
              '</strong>',
              '<br>Count: <strong>',
              data.numberOfThings,
              '</strong>',
              '</div>'
            ].join('');
          }
        }
      };
    }
  }

  render() {
    return (
      <div className="App">
        <div className="App-map">
          <Datamap {...this.state}/>
        </div>
      </div>
    );
  }
}
/*
                <div className="App-options">
                    <RadioGroup name="fruit" selectedValue={this.state.selectedRegion} onChange={this.update}>
                        {Radio => (
                            <div>
                                <Radio value="AMR"/>AMR
                                <Radio value="APAC"/>APAC
                                <Radio value="EMEA"/>EMEA
                                <Radio value="ALL"/>ALL
                            </div>
                        )}
                    </RadioGroup>

                </div> */
