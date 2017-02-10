/**
 * Created by Victor H. Ruelas-Rivera on 1/31/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { shallow, mount } from 'enzyme';
import FooterIndex from '../../features/footer/components/FooterIndex';

describe('<FooterIndex />', () => {
    it('should exist', () => {
        const wrapper = shallow(<FooterIndex />);
        expect(wrapper.exists()).toEqual(true);
    });
    it('should render EPA\'s logo', () => {
        const wrapper = mount(<FooterIndex />);
        expect(wrapper.find('.footer-logo img').get(0).getAttribute('alt')).toEqual('EPA_Seal');
    });
    it('should render 4 navigation links', () => {
        const wrapper = shallow(<FooterIndex />);
        expect(wrapper.find('.footer-links li div a').length).toBe(4);
    });
    it('should render 5 social media links', () => {
        const wrapper = shallow(<FooterIndex />);
        expect(wrapper.find('.footer-follow-links li a').length).toBe(5);
    });
});