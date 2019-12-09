import React from 'react';
import './App.css';
import { Route, withRouter } from 'react-router-dom';
import axios from 'axios';
import Home from './components/Home';
import Header from './components/Header';
import Footer from './components/Footer';
import LoginForm from './components/LoginForm';
import RegisterForm from './components/RegisterForm';
import { registerUser, loginUser, verifyUser, getAllGameGenres, postGenreGame, postGame, putGame } from './services/api-helper';
import GamesForm from './components/GamesForm';
import GameGenreForm from './components/GameGenreForm';
import SelectGenreForm from './components/SelectGenreForm'
import CreateGamesForm from './components/CreateGamesForm';
import EditGamesForm from './components/EditGamesForm';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      currentUser: null,
      authErrorMessage: "",
      game_genre: "",
      games: [],
      game: null,
      formData: {
        name: "",
        description: "",
        img_url: "",
        game_genre_id: ""
      },
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
  updateGameGenre = (game_genre) => {
    this.setState(prevState => ({
      formData: {
        ...prevState.formData,
        game_genre_id: game_genre
      },
      game_genre
    }))
  }
  //////////HandleClick, HandleChange,HandleSubmit,HandleAddGameSubmit, HandleAddGameSubmit,HandleEditGameSubmit,HandleDelete//////
  handleClick = (event) => {
    let radio = event.target.value
    this.setState({
      radio: radio
    })
  }
  handleChange = async (event) => {
    const { name, value } = event.target
    this.setState(prevState => ({
      formData: {
        ...prevState.formData,
        [name]: value
      }
    }))
  }

  handleSubmit = async (event) => {
    event.preventDefault();
    const formData = this.state.formData
    const game = await postGenreGame(formData)
      ;
    this.setState(prevState => ({
      games: [...prevState.games,
        game]
    }))
  }

  handleAddGameSubmit = async (event) => {
    event.preventDefault();
    const formData = this.state.formData;
    this.setState(prevState => ({
      formData: {
        name: "",
        description: "",
        img_url: "",
        game_genre_id: ""
      }
    }))
    const game = await postGame(formData)
      ;
    this.setState(prevState => ({
      games: [...prevState.games,
        game]
    }))
  }

  handleEditGameSubmit = async (id, game_genre_id) => {
    let formData = this.state.formData;
    formData.game_genre_id = game_genre_id
    console.log(formData)

    const game = await putGame(id, formData);

    this.setState(prevState => ({
      formData: {
        name: "",
        description: "",
        img_url: "",
        game_genre_id: ""
      }
    }))
    this.setState(prevState => ({
      games: [...prevState.games,
        game]
    }))
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

          <Route exact path="/" render={() => (
            <Home
              currentUser={currentUser}
            />)} />

          <Route path='/select_genre' render={() => <SelectGenreForm
            handleClick={this.handleClick}
            handleSubmit={this.handleSubmit}
            game_genres={this.state.game_genres}
          />}
          />

          <Route exact path="/genres/:genre_id" render={(props) => (
            <GameGenreForm
              genre_id={props.match.params.genre_id}
              updateGameGenre={this.updateGameGenre}
            />
          )} />
          <Route exact path="/genres/:genre_id/games" render={(props) => (
            <GamesForm
              handleDelete={this.handleDelete}
              genre_id={props.match.params.genre_id} />
          )} />
          <Route path="/create_game"
            render={(props) => (
              <CreateGamesForm
                formData={this.state.formData}
                handleChange={this.handleChange}
                handleAddGameSubmit={this.handleAddGameSubmit}
              />
            )} />
          <Route path="/genres/:genre_id/games/:id/edit"
            render={(props) => {
              const { genre_id } = props.match.params
              const { id } = props.match.params
              return <EditGamesForm
                formData={this.state.formData}
                handleChange={this.handleChange}
                handleEditGameSubmit={this.handleEditGameSubmit}
                id={id}
                genre_id={genre_id}
              />
            }} />
        </main>

        <Footer />
      </div>
    );
  }
}

export default withRouter(App);
