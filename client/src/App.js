import React from 'react';
import './App.css';
import { Route, withRouter } from 'react-router-dom';
import Home from './components/Home';
import Header from './components/Header';
import Footer from './components/Footer';
import LoginForm from './components/LoginForm';
import RegisterForm from './components/RegisterForm';
import { registerUser, loginUser, verifyUser, getOneGameGenre, getAllGameGenres } from './services/api-helper';
import GameGenreForm from './components/GameGenreForm';
import SelectGenreForm from './components/SelectGenreForm'
import Axios from 'axios';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      currentUser: null,
      authErrorMessage: "",
      game_genre: "",
      game: [],
      game_genres: []
    }
  }
  //////////Login, Register, LogOut & Verify
  handleLogin = async (loginData) => {
    const currentUser = await loginUser(loginData);
    if (currentUser.error) {
      this.setState({ authErrorMessage: currentUser.error });
    }
    else {
      this.setState({ currentUser });
      this.props.history.push('./');
    }
  }
  handleRegister = async (registerData) => {
    const currentUser = await registerUser(registerData);
    if (currentUser.error) {
      this.setState({ authErrorMessage: currentUser.error });
    }
    else {
      this.setState({ currentUser });
      this.props.history.push('./');
    }
  }
  handleLogout = () => {
    this.setState({ currentUser: null });
    localStorage.removeItem('authToken');
    this.setState({
      currentUser: null,
      authErrorMessage: "",
    });
  }
  handleVerify = async () => {
    const currentUser = await verifyUser();
    if (currentUser)
      this.setState({ currentUser });
  }
  /////////DidMount////////

  componentDidMount = async () => {
    await this.handleVerify
    const game_genres = await getAllGameGenres()
    this.setState({
      game_genres
    })
  }
  //////////HandleClick, HandleSubmit//////
  handleClick = (event) => {
    let radio = event.target.value
    this.setState({
      radio: radio
    })
  }
  handleSubmit = async (event) => {
    const game_genre = await getOneGameGenre
      (this.state.radio)
    this.setState({
      game_genre
    })
  }

  render() {
    const { currentUser } = this.state;
    return (
      <div className="App">
        <header>
          <Header
            currentUser={currentUser}
            handleLogout={this.handleLogout}
          />
          <Route exact path="/" render={() => (
            <Home
              currentUser={currentUser}
            />)} />

          <Route path="/login" render={() => (
            <LoginForm
              handleLogin={this.handleLogin}
              authErrorMessage={this.state.authErrorMessage}
            />
          )} />

          <Route path="/register" render={() => (
            <RegisterForm
              handleRegister={this.handleRegister}
              authErrorMessage={this.state.authErrorMessage}
            />
          )} />
        </header>

        <main>
          <Route path='/select_genre' render={() => <SelectGenreForm
            radio={this.state.radio}
            handleClick={this.handleClick}
            handleSubmit={this.handleSubmit}
            game_genres={this.state.game_genres}
          />}
          />

          <Route exact path="/genres/:genre_id" render={(props) => (
            <GameGenreForm
              genre_id={props.match.params.genre_id}
            />
          )} />
        </main>

        <Footer />
      </div>
    );
  }
}

export default withRouter(App);
