/**
 * Created by Victor H. Ruelas-Rivera on 1/31/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import ToolBar from '../../features/header/components/ToolBar';
import renderer from 'react-test-renderer';

test('ToolBar renders correctly', () => {
    const component = renderer.create(
        <ToolBar currentUri="/"/>
    );
    let tree = component.toJSON();
    expect(tree).toMatchSnapshot();
});