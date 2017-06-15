/**
 * Created by Victor H. Ruelas-Rivera on 6/14/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import ScintistProfile from '../../scientist/ScientistProfile';

class Scientist extends React.Component {
    render() {
        return (
            <div>
                <ScintistProfile {...this.props}/>
            </div>
        )
    }
}

export default Scientist;