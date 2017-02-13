/**
 * Created by Victor H. Ruelas-Rivera on 1/31/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { shallow, mount } from 'enzyme';
import { Navbar, Nav, NavDropdown, MenuItem } from 'react-bootstrap';
import ToolBar from '../../features/header/components/ToolBar';

describe('<ToolBar />', () => {
    it('should exist', () => {
        const wrapper = shallow(<ToolBar currentUri="/"/>);
        expect(wrapper.exists()).toEqual(true);
    });
    it('allows us to set props', () => {
        const wrapper = mount(<ToolBar currentUri="/"/>);
        expect(wrapper.props().currentUri).toEqual('/');
        wrapper.setProps({ currentUri: '/scientists/9' });
        expect(wrapper.props().currentUri).toEqual('/scientists/9');
    });
    it('should have one dropdown button of share links', () => {
        const wrapper = shallow(<ToolBar />);
        expect(wrapper.find('#share-nav-dropdown').length).toBe(1);
    });
    it('should have four share links', () => {
        const wrapper = shallow(<ToolBar currentUri="/"/>);
        expect(wrapper.find('MenuItem').length).toBe(4);
    });
});