/**
 * Created by Victor H. Ruelas-Rivera on 3/16/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import PublicationsTabContent from '../../src/scientist/PublicationsTabContent';
import renderer from 'react-test-renderer';

test('<PublicationsTabContent /> renders correctly', () => {
    const component = renderer.create(
        <PublicationsTabContent/>
    );
    let tree = component.toJSON();
    expect(tree).toMatchSnapshot();
});