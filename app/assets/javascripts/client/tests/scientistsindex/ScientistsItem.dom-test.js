/**
 * Created by Victor H. Ruelas-Rivera on 2/1/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { shallow, mount } from 'enzyme';
import { Thumbnail} from 'react-bootstrap';
import Scientist from '../../features/scientists/components/ScientistsItem';
import seed from '../../mocks/scientistMock';

describe('<ScientistsItem />', () => {
    it('should exist', () => {
        const wrapper = shallow(<Scientist scientist={seed} scientists_path="/" i={1}/>);
        expect(wrapper.exists()).toEqual(true);
    });
    it('allows us to set props', () => {
        const wrapper = mount(<Scientist scientist={seed} scientists_path="/" i={1}/>);
        expect(wrapper.props().scientist).toEqual(seed);
        wrapper.setProps({ scientist: {} });
        expect(wrapper.props().scientist).toEqual({});
    });
    it('should have one <Thumbnail />', () => {
        const wrapper = mount(<Scientist scientist={seed} scientists_path="/" i={1}/>);
        expect(wrapper.find(Thumbnail).length).toBe(1);
    });
    it('has sorting class .last-name', () => {
        const wrapper = shallow(<Scientist scientist={seed} scientists_path="/" i={1}/>);
        expect(wrapper.find('span.last-name').text()).toEqual('Perez');
    });
});
