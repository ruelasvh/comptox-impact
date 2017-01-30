/**
 * Created by Victor H. Ruelas-Rivera on 1/30/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import HomeIndex from '../../features/home/components/HomeIndex';
import renderer from 'react-test-renderer';
import seed from '../../__mocks__/homeMock';

test('HomeIndex initial snapshot test', () => {
    const component = renderer.create(
        <HomeIndex data={seed}/>
    );
    let tree = component.toJSON();
    expect(tree).toMatchSnapshot();
});