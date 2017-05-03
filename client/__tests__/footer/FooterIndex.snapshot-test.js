/**
 * Created by Victor H. Ruelas-Rivera on 1/31/17.
 * US EPA National Center for Computational Toxicology
 */

'use strict'

import React from 'react';
import FooterIndex from '../../src/footer/FooterIndex';
import renderer from 'react-test-renderer';

it('FooterIndex renders correctly', () => {
    const component = renderer.create(
        <FooterIndex />
    );
    let tree = component.toJSON();
    expect(tree).toMatchSnapshot();
});