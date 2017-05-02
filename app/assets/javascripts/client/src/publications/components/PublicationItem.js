/**
 * Created by vruelasr on 9/28/16.
 */
import React, { PropTypes } from 'react';
import $ from 'jquery';
import AltmetricWidget from './AltmetricWidget';
import PlumxWidget from './PlumxWidget';
import KudosWidget from './KudosWidget';
import { Glyphicon, Badge, Row, Col} from 'react-bootstrap';
import wgxpath from 'wgxpath';
import '../styles/publicationitem.css';


class PublicationItem extends React.Component {
    constructor() {
        super();
        this.state = {
            metrics: new Map()
        };
        // Bind get metrics method
        this.handleMetrics = this.handleMetrics.bind(this);
    }

    /* Get metrics from plumx widget and store in this component's state*/
    handleMetrics(thisComponent) {
        const id = thisComponent.props.id;
        let data = [];
        let m = new Map();

        $(document).ready(function () {
            // Simulate mouse enter element
            $("#plumx-publication-item-" + id).mouseenter(function () {
                data = [];
                m.clear();
            });
            // Simulate mouse leave element
            $("#plumx-publication-item-" + id).mouseleave(function () {

                const plumxMetricsUsage = getElementByXpath(".//*[@id='plumx-publication-item-"+id+"']/div/div/div/ul");
                // console.log('node', plumxMetricsUsage);

                if (plumxMetricsUsage) {
                    $("span", plumxMetricsUsage).each(function () {
                        data.push($(this).text());
                    });

                    for (var i = 0; i < data.length; i++) {
                        if (data[i] === "Abstract Views: ") {
                            m.set(data[i], data[i+1]);
                        } else if (data[i] === "Downloads: ") {
                            m.set(data[i], data[i+1]);
                        } else if (data[i] === "Citation Indexes: ") {
                            m.set(data[i], data[i+1]);
                        }
                    }
                }

                // If publication has doi, store metrics otherwise reset map
                if (!thisComponent.props.publication.doi) {
                    m.clear();
                }

                thisComponent.setState({ metrics: m }, console.log(thisComponent.state.metrics));
            });
            // Fire mouse hovering over element (does not work with out previous statements)
            $("#plumx-publication-item-" + id).trigger("mouseover");
            // Give time to collect the data
            setTimeout(function () {
                $("#plumx-publication-item-" + id).trigger('mouseleave');
            }, 100);
        });
    }

    componentDidMount() {
        this.handleMetrics(this);
    }

    render() {
        const { centerWide, publication, id } = this.props;
        const metrics = this.state.metrics;

        // Display information in their own badge
        const PlumMetrics = () => (
            <div className="publication-item-inline-metric">
                <Glyphicon glyph="glyphicon glyphicon-eye-open" />
                &nbsp;<strong>Abstract Views</strong>
                &nbsp;<Badge>{metrics.has("Abstract Views: ") ? metrics.get("Abstract Views: ") : "N/A"}</Badge>
                <div className="divider"/>
                <Glyphicon glyph="glyphicon glyphicon-book" />
                &nbsp;<strong>Citations</strong>
                &nbsp;<Badge>{metrics.has("Citation Indexes: ") ? metrics.get("Citation Indexes: ") : "N/A"}</Badge>
                <div className="divider"/>
                <Glyphicon glyph="glyphicon glyphicon-download-alt" />
                &nbsp;<strong>Downloads</strong> <Badge>{metrics.has("Downloads: ") ? metrics.get("Downloads: ") : "N/A"}</Badge>
            </div>
        );

        const Citation = () => (
            <div>
                <span dangerouslySetInnerHTML={{__html: publication.citation}} />
                <span>
                    {
                        publication.doi ?
                        <a href={`https://doi.org/${publication.doi}`} target="_blank"> doi:{publication.doi}</a> : ''
                    }
                </span>
            </div>
        );

        const Project = () => (
            <div dangerouslySetInnerHTML={{__html: publication.project}} />
        );

        return (
            <div className="publication-item">
                <Row>
                    <Col md={centerWide ? 7 : 9}>
                        <div className="publication-item-citation">
                            <Citation />
                        </div>
                        <div className={centerWide ? 'publication-item-show-counts' : 'publication-item-no-show-counts'}>
                            <PlumMetrics />
                        </div>
                    </Col>
                    <Col md={centerWide ? 2 : 0}>
                        <div className={centerWide ? 'publication-item-show-project' : 'publication-item-hide-project'}>
                            <Project />
                        </div>
                    </Col>
                    <Col md={1}>
                        <div
                            className={"publication-item-button " + (publication.doi ? "" : "publication-item-button-disabled")}
                            id={"altmetric-publication-item-" + id}
                            key={id} >
                            <AltmetricWidget doi={publication.doi ? publication.doi : "no-doi"} />
                        </div>
                    </Col>
                    <Col md={1}>
                        <div
                            className={"publication-item-button " + (publication.doi ? "" : "publication-item-button-disabled")}
                            id={"plumx-publication-item-" + id}
                            key={id} >
                            <PlumxWidget doi={publication.doi ? publication.doi : "xxxx/xxxxxx"} />
                        </div>
                    </Col>
                    <Col md={1}>
                        <div className={"publication-item-button " + (publication.doi ? "" : "publication-item-button-disabled")}>
                            <KudosWidget doi={publication.doi ? publication.doi : "no-doi"} />
                        </div>
                    </Col>
                </Row>
            </div>
        )
    }
}

PublicationItem.propTypes = {
    id: PropTypes.string.isRequired,
    publication: PropTypes.object.isRequired,
    centerWide: PropTypes.bool.isRequired
};

// Return element from XPath
function getElementByXpath(path) {
    wgxpath.install(window);
    return document.evaluate(path, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue;
}

export default PublicationItem;