/**
* Created by vruelasr on 12/20/16.
*/
import React from 'react';
import ReactDOM from 'react-dom';

import App from './App';

/**
 * Script extracted and slightly modified from react-reails gem
 * {@link https://github.com/reactjs/react-rails/tree/master/lib/assets/javascripts GitHub}
 */
document.addEventListener('DOMContentLoaded', function () {
    let componentEntry = document.getElementById('main');
    if (componentEntry) {
        ReactDOM.render(React.createElement(App), document.getElementById('main'));
    }
});