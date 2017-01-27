/**
* Created by vruelasr on 12/20/16.
*/
import React from 'react';
import ReactDOM from 'react-dom';
import HelloWorld from './features/helloworld/HelloWorld';
import Home from './features/home/components/HomeIndex';
import Header from './features/header/components/HeaderIndex';


/**
 * Script extracted and slightly modified from react-reails gem
 * {@link https://github.com/reactjs/react-rails/tree/master/lib/assets/javascripts GitHub}
 */
(function(document, window) {
    
    // Store the components here. NOTE: don't have to register presentational components
    //TODO: move features to features directory
    const components = {
        'HelloWorld': HelloWorld,
        'Home': Home,
        'Header': Header
    };
    //TODO: Create Registrar class for registering components when they are defined
    // const components = Registrar.releaseComponents();

    // jQuery is optional. Use it to support legacy browsers.
    var $ = (typeof window.jQuery !== 'undefined') && window.jQuery;

    window.ReactRailsUJS = {
        // This attribute holds the name of component which should be mounted
        // example: `data-react-class="MyApp.Items.EditForm"`
        CLASS_NAME_ATTR: 'data-react-class',

        // This attribute holds JSON stringified props for initializing the component
        // example: `data-react-props="{\"item\": { \"id\": 1, \"name\": \"My Item\"} }"`
        PROPS_ATTR: 'data-react-props',

        // helper method for the mount and unmount methods to find the
        // `data-react-class` DOM elements
        findDOMNodes: function(searchSelector) {
            // we will use fully qualified paths as we do not bind the callbacks
            var selector, parent;

            switch (typeof searchSelector) {
                case 'undefined':
                    selector = '[' + ReactRailsUJS.CLASS_NAME_ATTR + ']';
                    parent = document;
                    break;
                case 'object':
                    selector = '[' + ReactRailsUJS.CLASS_NAME_ATTR + ']';
                    parent = searchSelector;
                    break;
                case 'string':
                    selector = searchSelector + '[' + ReactRailsUJS.CLASS_NAME_ATTR + '], ' +
                        searchSelector + ' [' + ReactRailsUJS.CLASS_NAME_ATTR + ']';
                    parent = document;
                    break;
                default:
                    break;
            }

            if ($) {
                return $(selector, parent);
            } else {
                return parent.querySelectorAll(selector);
            }
        },

        getComponent: function (componentName) {
            return components[componentName];
        },

        // Within `searchSelector`, find nodes which should have React components
        // inside them, and mount them with their props.
        mountComponents: function(searchSelector) {
            var nodes = ReactRailsUJS.findDOMNodes(searchSelector);

            for (var i = 0; i < nodes.length; ++i) {
                var node = nodes[i];
                var className = node.getAttribute(ReactRailsUJS.CLASS_NAME_ATTR);
                var constructor = this.getComponent(className);
                var propsJson = node.getAttribute(ReactRailsUJS.PROPS_ATTR);
                var props = propsJson && JSON.parse(propsJson);

                if (typeof(constructor) === "undefined") {
                    var message = "Cannot find component: '" + className + "'";
                    if (console && console.log) { console.log("%c[react-rails] %c" + message + " for element", "font-weight: bold", "", node) }
                    var error = new Error(message + ". Make sure your component is globally available to render.");
                    throw error;
                } else {
                    /*
                     * The special React Redux component called <Provider> makes the store
                     * available to all container components in the application without
                     * passing it explicitly. Another option would be to pass the store
                     * as a prop to every container component.
                     */
                    ReactDOM.render(React.createElement(constructor, props), node);
                    // ReactDOM.render(React.createElement(constructor, props), node);
                }
            }
        },

        // Within `searchSelector`, find nodes which have React components
        // inside them, and unmount those components.
        unmountComponents: function(searchSelector) {
            var nodes = ReactRailsUJS.findDOMNodes(searchSelector);

            for (var i = 0; i < nodes.length; ++i) {
                var node = nodes[i];

                ReactDOM.unmountComponentAtNode(ReactDOM.findDOMNode(node).parentNode);
            }
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