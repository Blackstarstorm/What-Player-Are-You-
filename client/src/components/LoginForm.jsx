import React from 'react'
import { Link } from 'react-router-dom';

export default class LoginForm extends React.Component {
  state = {
    username: "",
    password: ""
  }
  handleChange = (event) => {
    const { name, value } = event.target;
    this.setState({ [name]: value });
  }
  render() {
    return (
      <form onSubmit={(event) => {
        event.preventDefault();
        this.props.handleLogin(this.state);
        this.setState({
          username: "",
          password: ""
        });
      }}>
        <h2>Login</h2>
        <label htmlFor="username">User Name:</label>
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
        <button className>Submit</button>
        <Link to="/register"><button> 
          Register</button>
        </Link>
        <br />
        <p>{this.props.authErrorMessage}</p>
      </form>
    )
  }
}
