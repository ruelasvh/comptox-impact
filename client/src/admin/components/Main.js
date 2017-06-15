/**
 * Created by Victor H. Ruelas-Rivera on 6/14/17.
 * US EPA National Center for Computational Toxicology
 */
/**
 * Created by Victor H. Ruelas-Rivera on 6/12/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import { ButtonToolbar, Button, PageHeader, Grid, Form, FormGroup, FormControl, Modal } from 'react-bootstrap';
import { Link } from 'react-router';
import $ from 'jquery';
import ScientistsList from './AllScientists';
import { searchScientists } from '../../utils/Client';
import '../styles/allscientists.css'

class Main extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            scientists: [],
            isLoading: true,
        };

        this.removeScientist = this.removeScientist.bind(this);
        this.handleDelete = this.handleDelete.bind(this);
    }

    componentDidMount() {
        searchScientists((result) => this.setState({ scientists: result.data, isLoading: false }));
    }

    handleDelete(id) {
        $.ajax({
            url: `/api/scientists/${id}`,
            type: 'DELETE',
            success: (response) => {
                this.removeScientist(id);
            }
        });
    }

    removeScientist(id) {
        var newScientists = this.state.scientists.filter((scientist) => {
            return scientist.scientistId != id;
        });

        this.setState({ scientists: newScientists })
    }

    renderToolbar() {
        return (
            <div className="admin-list-toolbar">
                <Link to="/admin/scientists/new">
                    <Button bsStyle="success" >Add Scientist</Button>
                </Link>
            </div>
        )
    }

    render() {
        return (
            <Grid>
                {this.state.isLoading ? <div/> :
                    <div>
                        <PageHeader>NCCT Scientists and Postdocs</PageHeader>
                        {this.renderToolbar()}
                        <br/>
                        <ScientistsList scientists={this.state.scientists} handleDelete={this.handleDelete}/>
                    </div>
                }
            </Grid>
        )
    }
}

export default Main;