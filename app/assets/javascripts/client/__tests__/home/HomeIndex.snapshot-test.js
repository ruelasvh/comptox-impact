/**
 * Created by Victor H. Ruelas-Rivera on 1/30/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import HomeIndex from '../../src/home/HomeIndex';
import renderer from 'react-test-renderer';
import seed from '../../mocks/homeMock';

test('HomeIndex initial snapshot test', () => {
    const component = renderer.create(
        <HomeIndex data={seed}/>
    );
    let tree = component.toJSON();
    expect(tree).toMatchSnapshot();
});