/**
 * Created by Victor H. Ruelas-Rivera on 1/30/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { shallow, mount } from 'enzyme';
import HomeIndex from '../../src/home/HomeIndex';
import seed from '../../mocks/homeMock';
import { Link } from 'react-router';

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
    it('should render 4 Links for different site sections', () => {
        const wrapper = shallow(<HomeIndex data={seed}/>);
        expect(wrapper.find(Link).length).toBe(4);
    });
    it('should render 1 Link to /scientists', () => {
        const wrapper = mount(<HomeIndex data={seed}/>);
        expect(wrapper.find(Link).get(0).props.to).toEqual('/scientists');
    });
    it('should render 1 Link to /publications', () => {
        const wrapper = mount(<HomeIndex data={seed}/>);
        expect(wrapper.find(Link).get(1).props.to).toEqual('/publications');
    });
    it('should render 1 Link to /data-tools', () => {
        const wrapper = mount(<HomeIndex data={seed}/>);
        expect(wrapper.find(Link).get(2).props.to).toEqual('/data-tools');
    });
    it('should render 1 Link to /impact', () => {
        const wrapper = mount(<HomeIndex data={seed}/>);
        expect(wrapper.find(Link).get(3).props.to).toEqual('/impact');
    });
});