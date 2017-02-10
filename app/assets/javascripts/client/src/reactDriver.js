/**
* Created by vruelasr on 12/20/16.
*/
import React from 'react';
import ReactDOM from 'react-dom';
import { Router, Route, IndexRoute, browserHistory } from 'react-router';

import App from './App';
import Home from './features/home/components/HomeIndex';
import ScientistsIndex from './features/scientistsindex/components/ScientistsIndex';



/**
 * Script extracted and slightly modified from react-reails gem
 * {@link https://github.com/reactjs/react-rails/tree/master/lib/assets/javascripts GitHub}
 */
(function(document, window) {

    // jQuery is optional. Use it to support legacy browsers.
    var $ = (typeof window.jQuery !== 'undefined') && window.jQuery;

    window.ReactRailsUJS = {

        // Within `searchSelector`, find nodes which should have React components
        // inside them, and mount them with their props.
        mountComponents: function() {
            // ReactDOM.render(React.createElement(App), document.getElementById('main'));
            ReactDOM.render((
                <Router history={browserHistory}>
                    <Route path="/" component={App}>
                        <IndexRoute component={Home}/>
                        <Route path="scientists" component={ScientistsIndex}/>
                    </Route>
                </Router>
            ), document.getElementById('main'));
        },

        // Within `searchSelector`, find nodes which have React components
        // inside them, and unmount those components.
        unmountComponents: function() {
            ReactDOM.unmountComponentAtNode(ReactDOM.findDOMNode(document.getElementById('main')).parentNode);
        },

        Turbolinks: {
            // Turbolinks 5+ got rid of named events (?!)
            setup: function() {
                ReactRailsUJS.handleEvent('turbolinks:load', function() {ReactRailsUJS.mountComponents()});
                ReactRailsUJS.handleEvent('turbolinks:before-render', function() {ReactRailsUJS.unmountComponents()});
            }
        },

        TurbolinksClassic: {
            // Attach handlers to Turbolinks-Classic events
            // for mounting and unmounting components
            setup: function() {
                ReactRailsUJS.handleEvent(Turbolinks.EVENTS.CHANGE, function() {ReactRailsUJS.mountComponents()});
                ReactRailsUJS.handleEvent(Turbolinks.EVENTS.BEFORE_UNLOAD, function() {ReactRailsUJS.unmountComponents()});
            }
        },

        TurbolinksClassicDeprecated: {
            // Before Turbolinks 2.4.0, Turbolinks didn't
            // have named events and didn't have a before-unload event.
            // Also, it didn't work with the Turbolinks cache, see
            // https://github.com/reactjs/react-rails/issues/87
            setup: function() {
                Turbolinks.pagesCached(0)
                ReactRailsUJS.handleEvent('page:change', function() {ReactRailsUJS.mountComponents()});
                ReactRailsUJS.handleEvent('page:receive', function() {ReactRailsUJS.unmountComponents()});
            }
        },

        Native: {
            // Attach handlers to browser events to mount & unmount components
            setup: function() {
                if ($) {
                    $(function() {ReactRailsUJS.mountComponents()});
                } else if ('addEventListener' in window) {
                    document.addEventListener('DOMContentLoaded', function() {ReactRailsUJS.mountComponents()});
                } else {
                    // add support to IE8 without jQuery
                    window.attachEvent('onload', function() {ReactRailsUJS.mountComponents()});
                }
            }
        }
    };

    // Event Setup
    if ($) {
        ReactRailsUJS.handleEvent = function(eventName, callback) {
            $(document).on(eventName, callback);
        };
    } else {
        ReactRailsUJS.handleEvent = function(eventName, callback) {
            document.addEventListener(eventName, callback);
        };
    }
    // Detect which kind of events to set up:
    if (typeof Turbolinks !== 'undefined' && Turbolinks.supported) {
        if (typeof Turbolinks.EVENTS !== 'undefined') {
            // Turbolinks.EVENTS is in classic version 2.4.0+
            ReactRailsUJS.TurbolinksClassic.setup();
        } else if (typeof Turbolinks.controller !== "undefined") {
            // Turbolinks.controller is in version 5+
            ReactRailsUJS.Turbolinks.setup();
        } else {
            ReactRailsUJS.TurbolinksClassicDeprecated.setup();
        }
    } else {
        ReactRailsUJS.Native.setup();
    };

})(document, window);