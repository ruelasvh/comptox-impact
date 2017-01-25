import React from 'react';
import selfieImage from './img/monkey.jpg';
import './HelloWorld.scss';

export default class HelloWorld extends React.Component {
    constructor(props) {
        super(props);
        // Registrar.register(this);
    }

    render() {
        console.log('Touched HelloWorld component');
        return (
            <div id="greetingReact">
                <p>This is a <span className="react-reference">React</span> component.</p>
                <img id="hello-world-img1" src={selfieImage} alt="selfie-image"/>
                <p>{this.props.greeting}</p>
            </div>
        );
    }
}