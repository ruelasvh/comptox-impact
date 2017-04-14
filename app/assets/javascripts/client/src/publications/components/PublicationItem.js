/**
 * Created by vruelasr on 9/28/16.
 */
import React, { PropTypes } from 'react';
import $ from 'jquery';
import AltmetricWidget from './AltmetricWidget';
import PlumxWidget from './PlumxWidget';
import KudosWidget from './KudosWidget';
import { Glyphicon, Badge, Row, Col} from 'react-bootstrap';
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
                console.log('Plumx icon simulate hover');
                data = [];
                m.clear();
            });
            // Simulate mouse leave element
            $("#plumx-publication-item-" + id).mouseleave(function () {
                const plumxMetricsUsage = getElementByXpath(".//*[@id='plumx-publication-item-"+id+"']/div/div/div/ul");
                $("span", plumxMetricsUsage).each(function () {
                    data.push($(this).text());
                });
                // console.log(data);
                for (var i = 0; i < data.length; i++) {
                    if (data[i] === "Abstract Views: ") {
                        m.set(data[i], data[i+1]);
                    } else if (data[i] === "Downloads: ") {
                        m.set(data[i], data[i+1]);
                    } else if (data[i] === "Citation Indexes: ") {
                        m.set(data[i], data[i+1]);
                    }
                }
                // console.log(m);
                thisComponent.setState({ metrics: m });
            });
            // Fire mouse hovering over element (does not work with out previous statements)
            $("#plumx-publication-item-" + id).trigger("mouseover");
            // Give time to collect the data
            setTimeout(function () {
                $("#plumx-publication-item-" + id).trigger('mouseleave');
            }, 1500);
        });
    }

    appendPlumxScript() {
        if (document.getElementById('plumx-script')) {
            console.log('Appended Plumx script 1st level');
            if (window.__plumX) {
                window.__plumX.widgets.popup.wireUp();
                console.log('Appended Plumx script 2nd level');
            }
            return;
        }
        const plumxScript = document.createElement("script");
        plumxScript.id = 'plumx-script';
        plumxScript.src = "//d39af2mgp1pqhg.cloudfront.net/widget-popup.js";
        plumxScript.async = true;
        document.head.appendChild(plumxScript);
    }

    appendAltmetricScript() {
        if (document.getElementById('altmetric-script')) {
            if (window._altmetric) {
                window._altmetric.embed_init();
            }
            return;
        }
        const altMetricScript = document.createElement("script");
        altMetricScript.id = 'altmetric-script';
        altMetricScript.src = "//d1bxh8uas1mnw7.cloudfront.net/assets/embed.js";
        altMetricScript.async = true;
        document.head.appendChild(altMetricScript);
    }

    componentDidMount() {
        /* Get metrics */
        // this.handleMetrics(this);
    }

    render() {
        // console.log(this.state.metrics);
        const centerWide = this.props.centerWide;
        const publication = this.props.publication;
        const metrics = this.state.metrics;
        const id = this.props.id;

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
                    {publication.doi ?
                        <a href={`https://doi.org/${publication.doi}`} target="_blank"> doi:{publication.doi}</a> :
                        <span> Retrieved from <a href={publication.external_url}>{publication.external_url}</a></span>
                    }
                </span>
            </div>
        );

        const Project = () => (
            <div dangerouslySetInnerHTML={{__html: publication.projectLink}} />
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
                        <div className="publication-item-button" id={"altmetric-publication-item-" + id}>
                            <AltmetricWidget doi={publication.doi} />
                        </div>
                    </Col>
                    <Col md={1}>
                        <div className="publication-item-button" id={"plumx-publication-item-" + id}>
                            <PlumxWidget doi={publication.doi} />
                        </div>
                    </Col>
                    <Col md={1}>
                        <div className="publication-item-button">
                            <KudosWidget doi={publication.doi} />
                        </div>
                    </Col>
                </Row>
            </div>
        )
    }

    componentDidUpdate() {
        this.appendPlumxScript();
        this.appendAltmetricScript();
    }
}

PublicationItem.propTypes = {
    id: PropTypes.string.isRequired,
    publication: PropTypes.object.isRequired,
    centerWide: PropTypes.bool.isRequired
};

// Return element from XPath
function getElementByXpath(path) {
    return document.evaluate(path, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue;
}

export default PublicationItem;