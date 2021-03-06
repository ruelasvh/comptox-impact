/**
 * Created by Victor H. Ruelas-Rivera on 6/12/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import PropTypes from 'prop-types';
import { ButtonToolbar, Button, Modal } from 'react-bootstrap';
import { withRouter } from 'react-router';
import { navigate } from '../../utils/Router';
import '../styles/allscientists.css'

class AllScientists extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            showDeleteModal: false,
            id: ""
        };

        this.removeScientist = this.removeScientist.bind(this);
        this.handleDeleteModal = this.handleDeleteModal.bind(this);
        this.handleEdit = this.handleEdit.bind(this);
    }

    handleDeleteModal(id) {
        this.state.showDeleteModal ? this.setState({ showDeleteModal: false, id: id }) : this.setState({ showDeleteModal: true, id: id });
    }

    removeScientist() {
        this.props.handleDelete(this.state.id);
        this.setState({ showDeleteModal: false })
    }

    handleEdit(scientist) {
        navigate({
            path: `/admin/scientists/${scientist.scientistId}`,
            state: { scientist, isEditable: true },
            routerAction: this.props.router.push
        })
    }

    renderDeleteModal(){
        return (
            <Modal show={this.state.showDeleteModal} onHide={this.handleDeleteModal}>
                    <Modal.Header>
                        <Modal.Title>Are you sure?</Modal.Title>
                    </Modal.Header>

                    <Modal.Body>
                        This profile will be deleted.
                    </Modal.Body>

                    <Modal.Footer>
                        <Button onClick={this.handleDeleteModal}>Cancel</Button>
                        <Button bsStyle="primary" onClick={this.removeScientist}>Confirm</Button>
                    </Modal.Footer>
            </Modal>
        )
    }

    renderScientists() {
        return this.props.scientists.map((scientist) => {
            return (
                <div key={scientist.scientistId} className="admin-scientist-item">
                    <h3>{scientist.lastName + ', ' + scientist.firstName}</h3>
                    <ButtonToolbar>
                        <Button bsSize="xsmall" onClick={this.handleEdit.bind(this, scientist)}>Edit</Button>
                        <Button type="submit" bsStyle="danger" bsSize="xsmall" onClick={this.handleDeleteModal.bind(this, scientist.scientistId)}>Delete</Button>
                    </ButtonToolbar>
                </div>
            )
        })
    }


    render() {
        return (
            <div>
                {this.renderScientists()}
                {this.renderDeleteModal()}
            </div>
        )
    }
}

AllScientists.propTypes = {
    handleDelete: PropTypes.func,
    router: PropTypes.object,
    scientists: PropTypes.array
}

export default withRouter(AllScientists);