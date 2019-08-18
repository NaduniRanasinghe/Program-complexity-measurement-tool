import React from 'react'
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css'
import constant from './constant'


class Add_File_Component extends React.Component {


    constructor(props) {
        super(props);
        this.state = {
            file: '',
            codeName:''
        };
        this.onFormSubmit = this.onFormSubmit.bind(this);
        this.onChangeFile = this.onChangeFile.bind(this);
        this.onChangeCodeKeyName = this.onChangeCodeKeyName.bind(this);



    }
    onFormSubmit(e) {
        e.preventDefault(); // Stop form submit
        const data = new FormData();

        data.append("file", this.state.file);
        data.append("codename", this.state.codeName);


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

                        <tr className="info">
                            <td>Upload File here</td>
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

                        </tbody>
                    </table>
                    <div className="form-group">
                        <input type="submit"
                               value="Upload"
                               className="btn btn-primary"/>
                    </div>
                </form>
            </div>
        )
    }
}


export default Add_File_Component;