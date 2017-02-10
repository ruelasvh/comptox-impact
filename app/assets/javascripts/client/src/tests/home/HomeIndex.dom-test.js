/**
 * Created by Victor H. Ruelas-Rivera on 1/30/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { shallow, mount } from 'enzyme';
import HomeIndex from '../../features/home/components/HomeIndex';
import seed from '../../mocks/homeMock';

describe('<HomeIndex />', () => {
    it('should exist', () => {
        const wrapper = shallow(<HomeIndex data={seed}/>);
        expect(wrapper.exists()).toEqual(true);
    });
    it('should render 1 "h1"', () => {
        const wrapper = shallow(<HomeIndex data={seed}/>);
        expect(wrapper.find('h1').length).toBe(1);
    });
    it('should render 1 "p"', () => {
        const wrapper = shallow(<HomeIndex data={seed}/>);
        expect(wrapper.find('p').length).toBe(1);
    });
    it('should render 4 "a"', () => {
        const wrapper = shallow(<HomeIndex data={seed}/>);
        expect(wrapper.find('a').length).toBe(4);
    });
    it('should render 1 "a" with href /scientists', () => {
        const wrapper = mount(<HomeIndex data={seed}/>);
        expect(wrapper.find('a').get(0).getAttribute('href')).toEqual('/scientists');
    });
    it('should render 1 "a" with href /publications', () => {
        const wrapper = mount(<HomeIndex data={seed}/>);
        expect(wrapper.find('a').get(1).getAttribute('href')).toEqual('/publications');
    });
    it('should render 1 "a" with href /data-tools', () => {
        const wrapper = mount(<HomeIndex data={seed}/>);
        expect(wrapper.find('a').get(2).getAttribute('href')).toEqual('/data-tools');
    });
    it('should render 1 "a" with href /impact', () => {
        const wrapper = mount(<HomeIndex data={seed}/>);
        expect(wrapper.find('a').get(3).getAttribute('href')).toEqual('/impact');
    });
});