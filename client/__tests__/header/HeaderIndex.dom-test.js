/**
 * Created by Victor H. Ruelas-Rivera on 1/31/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { shallow, mount } from 'enzyme';
import HeaderIndex from '../../src/header/HeaderIndex';
import ToolBar from '../../src/header/ToolBar';
import { Link } from 'react-router';

describe('<HeaderIndex />', () => {
    it('should exist', () => {
        const wrapper = shallow(<HeaderIndex currentUri={"/"}/>);
        expect(wrapper.exists()).toEqual(true);
    });
    it('should be static', () => {
        const wrapper = mount(<HeaderIndex />);
        expect(wrapper.find('nav').get(0).getAttribute('class')).toEqual('navbar navbar-navbar-fixed-top navbar-fixed-top');
    });
    it('should render EPA\'s logo', () => {
        const wrapper = mount(<HeaderIndex />);
        expect(wrapper.find('img').get(0).getAttribute('alt')).toEqual('EPA_Logo');
        expect(wrapper.find('.navbar-logo').get(0).getAttribute('href')).toEqual('https://epa.gov');
    });
    it('renders two navigational items', () => {
        const wrapper = shallow(<HeaderIndex />);
        expect(wrapper.find('.navbar-fixed-top-links a').length).toBe(2);
    });
    it('A link that goes back to home', () => {
        const wrapper = mount(<HeaderIndex />);
        expect(wrapper.find(Link).length).toBe(1);
    });
    it('renders <ToolBar /> component', () => {
        const wrapper = shallow(<HeaderIndex />);
        expect(wrapper.find(ToolBar).length).toBe(1);
    });
    it('allows us to set props', () => {
        const wrapper = mount(<HeaderIndex currentUri={"/"}/>);
        expect(wrapper.props().currentUri).toEqual('/');
        wrapper.setProps({ currentUri: '/scientists/9' });
        expect(wrapper.props().currentUri).toEqual('/scientists/9');
    });
});