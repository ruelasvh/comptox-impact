/**
 * Created by Victor H. Ruelas-Rivera on 3/16/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { shallow, mount } from 'enzyme';
import PublicationItem from '../../src/publications/PublicationItem';
import AltmetricWidget from '../../src/publications/AltmetricWidget';
import PlumxWidget from '../../src/publications/PlumxWidget';
import KudosWidget from '../../src/publications/KudosWidget';
import seed from '../../mocks/publicationMock';

describe('<PublicationItem />', () => {
    it('should exist', () => {
        const wrapper = shallow(
            <PublicationItem publication={seed} centerWide={false} id="pub-item-1" />
        );
        expect(wrapper.exists()).toEqual(true);
    });
    it('allows us to set props', () => {
        const wrapper = mount(
            <PublicationItem publication={seed} centerWide={false} id={"pub-item-1"} />
        );
        expect(wrapper.props().publication).toEqual(seed);
        expect(wrapper.props().centerWide).toEqual(false);
        expect(wrapper.props().id).toEqual("pub-item-1");

        wrapper.setProps({ publication: {} });
        wrapper.setProps({ centerWide: true });
        wrapper.setProps({ id: "pub-item-2" });

        expect(wrapper.props().publication).toEqual({});
        expect(wrapper.props().centerWide).toEqual(true);
        expect(wrapper.props().id).toEqual("pub-item-2");
    });
    it('Renders one <AltmetricWidget />', () => {
        const wrapper = mount(
            <PublicationItem publication={seed} centerWide={false} id={"pub-item-1"} />
        );
        expect(wrapper.find(AltmetricWidget).length).toBe(1);
    })
    it('Renders one <PlumxWidget />', () => {
        const wrapper = mount(
            <PublicationItem publication={seed} centerWide={false} id={"pub-item-1"} />
        );
        expect(wrapper.find(PlumxWidget).length).toBe(1);
    })
    it('Renders one <KudosWidget />', () => {
        const wrapper = mount(
            <PublicationItem publication={seed} centerWide={false} id={"pub-item-1"} />
        );
        expect(wrapper.find(KudosWidget).length).toBe(1);
    });
    it('Renders the citation text', () => {
        const wrapper = mount(
            <PublicationItem publication={seed} centerWide={false} id={"pub-item-1"} />
        );
        expect(wrapper.find('.publication-item-citation').text()).toEqual(
            "Allard, P., Kleinstreuer, N. C., Knudsen, T. B., & Colaiacovo, M. P. (2013). A C. elegans screening platform for the rapid assessment of chemical disruption of germline function. Environ Health Perspect, 121(6), 717-724. doi:10.1289/ehp.1206301"
        );
    });
})