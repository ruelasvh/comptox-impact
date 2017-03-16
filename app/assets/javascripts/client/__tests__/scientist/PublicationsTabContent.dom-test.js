/**
 * Created by Victor H. Ruelas-Rivera on 3/16/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { shallow, mount } from 'enzyme';
import PublicationsTabContent from '../../src/scientist/PublicationsTabContent';
import PublicationItem from '../../src/publications/PublicationItem';

describe('<PublicationsTabContent />', () => {
    it('should exist', () => {
        const wrapper = shallow(
            <PublicationsTabContent/>
        );
        expect(wrapper.exists()).toEqual(true);
    });
    it('Renders eight <PublicationItems />', () => {
        const wrapper = mount(
            <PublicationsTabContent/>
        );
        expect(wrapper.find(PublicationItem).length).toBe(8)
    });
})