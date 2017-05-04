/**
 * Created by Victor H. Ruelas-Rivera on 2/2/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { shallow, mount } from 'enzyme';
import { Button, Glyphicon, Thumbnail, Grid } from 'react-bootstrap';
import ScientistsList from '../../src/scientists/components/ScientistsList';
import Scientist from '../../src/scientists/components/ScientistsListItem';
import scientists from '../../mocks/scientistsListMock';

describe('<ScientistsIndex />', () => {
    it('should exist', () => {
        const wrapper = shallow(<ScientistsList scientists={scientists}/>);
        expect(wrapper.exists()).toEqual(true);
    });
    it('should render 3 <Scientist />', () => {
        const wrapper = shallow(<ScientistsList scientists={scientists}/>);
        expect(wrapper.find(Scientist).length).toBe(3);
    })
})