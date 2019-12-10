import React from 'react';
import { withRouter } from 'react-router-dom';
import { registerUser } from '../services/api-helper';
import FFready from '../FFready.mp3'

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
    let audioR = new Audio(FFready);
    return (
      <form onClick={async () =>
        await audioR.play()}
        onSubmit={this.handleSubmit}>
        <div className="sign-in">
          <h2>Register</h2>
          <label htmlFor="username">Username:</label>
          <input
            name="username"
            className="username"
            type="text"
            value={this.state.username}
            onChange={this.handleChange}
          />
          <label htmlFor="password">Password:</label>
          <input
            name="password"
            className="password"
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
