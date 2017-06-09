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
    if(data.length !== 0) {
      var onlyValues = data.map(function(obj) {
        return obj.count;
      });
      var minValue = Math.min.apply(null, onlyValues),
        maxValue = Math.max.apply(null, onlyValues);

      let dataset = {};
      var paletteScale = d3.scale.linear().domain([minValue, maxValue]).range(["#ffe0cc", "#ff471a"]);
      data.forEach(function(item) {
        let iso;
        if(scope === 'usa') {
          iso = item.name.slice(3)
        } else if (scope === 'world') {
          iso = iso3166['2to3'][item.name]
        }
        dataset[iso] = {
          numberOfThings: item.count,
          fillColor: paletteScale(item.count),
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
