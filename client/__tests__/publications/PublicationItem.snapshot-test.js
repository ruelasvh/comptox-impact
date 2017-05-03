/**
 * Created by Victor H. Ruelas-Rivera on 3/16/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import PublicationItem from '../../src/publications/components/PublicationItem';
import renderer from 'react-test-renderer';
import seed from '../../mocks/publicationMock';

test('<PublicationItem /> renders correctly', () => {
    const component = renderer.create(
        <PublicationItem publication={seed} centerWide={false} id="pub-item-1" key="pub-item-key-1" />
    );
    let tree = component.toJSON();
    expect(tree).toMatchSnapshot();
});