/**
 * Created by Victor H. Ruelas-Rivera on 2/1/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import Scientist from './client/src/scientists/components/ScientistsListItem';
import renderer from 'react-test-renderer';
import seed from '../../mocks/scientistMock';

test('ScientistsItem renders correctly', () => {
    const component = renderer.create(
        <Scientist scientist={seed} scientists_path="/scientists" i={1}/>
    );
    let tree = component.toJSON();
    expect(tree).toMatchSnapshot();
});