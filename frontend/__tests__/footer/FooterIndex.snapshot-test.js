/**
 * Created by Victor H. Ruelas-Rivera on 1/31/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import FooterHeader from '../../features/footer/components/FooterIndex';
import renderer from 'react-test-renderer';

test('FooterIndex renders correctly', () => {
    const component = renderer.create(
        <FooterHeader />
    );
    let tree = component.toJSON();
    expect(tree).toMatchSnapshot();
});