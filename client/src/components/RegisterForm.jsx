import React from 'react';
import { withRouter } from 'react-router-dom';
import { registerUser } from '../services/api-helper';

class RegisterForm extends React.Component {
  state = {
    formData: {
      username: "",
      password: ""
    }
  }
  handleChange = (event) => {
    const { name, value } = event.target;
    this.setState(prevState => ({
      formData: {
        ...prevState.formData,
        [name]: value
      }
    }))
  }

  handleSubmit = async (event) => {
    event.preventDefault();
    await registerUser(this.state.formData)
    // this.props.history.push("/")
  }

  render() {

    return (
      <form onSubmit={this.handleSubmit}>
        <div className="sign-in">
          <h2>Register</h2>
          <label htmlFor="username">Username:</label>
          <input
            name="username"
            id="username"
            type="text"
            value={this.state.username}
            onChange={this.handleChange}
          />
          <label htmlFor="password">Password:</label>
          <input
            name="password"
            id="password"
            type="password"
            value={this.state.password}
            onChange={this.handleChange}
          />
          <button className='sign-up'>Submit</button>


        </div>
      </form>
    )
  }
}
export default withRouter(RegisterForm);
