/**
 * Created by Victor H. Ruelas-Rivera on 1/31/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import HeaderIndex from '../../features/header/components/HeaderIndex';
import renderer from 'react-test-renderer';

test('HeaderIndex renders correctly', () => {
    const component = renderer.create(
        <HeaderIndex currentUri={"/"}/>
    );
    let tree = component.toJSON();
    expect(tree).toMatchSnapshot();
});

