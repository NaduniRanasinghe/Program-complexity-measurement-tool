import React from 'react'
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css'
import constant from './constant'


class Add_Assignment_Component extends React.Component {


    constructor(props) {
        super(props);
        this.state = {
            file: '',
            codeName:''
        };
        this.onFormSubmit = this.onFormSubmit.bind(this);
        this.onChangeFile = this.onChangeFile.bind(this);
        this.onCourseChange = this.onCourseChange.bind(this);
        this.onChangeDescription = this.onChangeDescription.bind(this);
        this.onChangeDueDate = this.onChangeDueDate.bind(this);
        this.onChangeStartDate = this.onChangeStartDate.bind(this);
        this.onChangeCodeKeyName = this.onChangeCodeKeyName.bind(this);
        this.countryData = [
            {value: 'SE1010', name: 'SE1010'},
            {value: 'SE1020', name: 'SE2020'}
        ];


    }
    onFormSubmit(e) {
        e.preventDefault(); // Stop form submit
        const data = new FormData();

        data.append("file", this.state.file);
        data.append("codename", this.state.codeName);
        // data.append("assignmentName", this.state.assignmentName);
        // data.append("description", this.state.description);
        // data.append("dueDate", this.state.dueDate);
        // data.append("startDate", this.state.startDate);

        axios.post(constant()+'/sendfile', data).then(res => {
            console.log(res);
        }).catch(err => {
            console.log(err);
        });

        this.state = {
            file: ''

        };
    }

    componentDidMount() {
        axios.get(constant()+'/getcourse').then(
            data => {
                this.setState({
                    Courses: data.data
                })
            }
        )
    }

    onChangeFile(e) {
        this.setState({
            file: e.target.files[0]
        })
    }

    onChangeDescription(e) {
        this.setState({
            description: e.target.value
        })
    }

    onChangeDueDate(e) {
        this.setState({
            dueDate: e.target.value
        })
    }
    onCourseChange(e) {
        this.setState({
            course: e.target.value
        })
    }

    onChangeStartDate(e) {
        this.setState({
            startDate: e.target.value
        })
    }

    onChangeCodeKeyName(e) {
        this.setState({
            codeName: e.target.value
        })

    }

    render() {
        return (
            <div className="container" style={{backgroundColor: "#FFF"}}>
                <br/><br/><br/>
                <form onSubmit={this.onFormSubmit}>
                    <h2>Upload test file</h2>
                    <br/><br/>
                    <table className="table">
                        <thead>
                        <tr>
                            {/*<th></th>*/}
                            {/*<th></th>*/}
                            {/*<th></th>*/}
                        </tr>
                        </thead>
                        <tbody>
                        <tr className="success">
                            <td>Code Key Name</td>
                            <td><input type="text"
                                       value={this.state.codeName}
                                       onChange={(e) => this.onChangeCodeKeyName(e)}
                            /></td>
                            {/*<td>john@example.com</td>*/}
                        </tr>
                        <tr className="danger">
                            <td>Description</td>
                            <td><input type="text"
                                       value={this.state.description}
                                       onChange={(e) => this.onChangeDescription(e)}/></td>
                            {/*<td>mary@example.com</td>*/}
                        </tr>
                        <tr className="info">
                            <td>Upload Assignment here</td>
                            <td>
                                <div>
                                    <label>Select File</label>
                                    <br/><br/>
                                    <input type="file" className="form-control"
                                           onChange={this.onChangeFile}
                                           required
                                    />
                                </div>
                            </td>
                            {/*<td>july@example.com</td>*/}
                        </tr>
                        <tr className="warning">
                            <td>Due Date</td>
                            <td><input type="datetime-local"
                                       value={this.state.dueDate}
                                       onChange={(e) => this.onChangeDueDate(e)}/></td>
                            {/*<td>bo@example.com</td>*/}
                        </tr>
                        <tr className="active">
                            <td>Start Date</td>
                            <td><input type="datetime-local"
                                       value={this.state.startDate}
                                       onChange={(e) => this.onChangeStartDate(e)}/></td>
                            {/*<td>act@example.com</td>*/}
                        </tr>
                        </tbody>
                    </table>
                    <div className="form-group">
                        <input type="submit"
                               value="Add Assignment"
                               className="btn btn-primary"/>
                    </div>
                </form>
            </div>
        )
    }
}


export default Add_Assignment_Component;