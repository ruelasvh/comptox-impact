/**
 * Created by Victor H. Ruelas-Rivera on 2/2/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { shallow, mount } from 'enzyme';
import { Button, Glyphicon, Thumbnail, Grid } from 'react-bootstrap';
import Isotope from 'isotope-layout';
import ScientistsIndex from '../../features/scientists/components/ScientistsIndex';
import Scientist from '../../features/scientists/components/ScientistsItem';
import seed from '../../mocks/scientistsListMock';

describe('<ScientistsIndex />', () => {
    it('should exist', () => {
        const wrapper = shallow(<ScientistsIndex scientists={seed} scientists_path="/scientists"/>);
        expect(wrapper.exists()).toEqual(true);
    });
    // it('allows us to set props', () => {
    //     const wrapper = mount(<ScientistsIndex scientists={seed} scientists_path="/scientists"/>);
    //     expect(wrapper.props().scientists).toEqual(seed);
    // })
    it('should render 3 <Scientist />', () => {
        const wrapper = shallow(<ScientistsIndex scientists={seed} scientists_path="/scientists"/>);
        expect(wrapper.find(Scientist).length).toBe(3);
    })
})