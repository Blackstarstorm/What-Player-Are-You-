import React from 'react';
import { Router, withRouter } from 'react-router-dom';
import CreateGamesForm from './CreateGamesForm';
import EditGamesForm from './EditGamesForm';
import { getAllGames, postGenreGame, putGenreGame,deleteGenreGame } from '../services/api-helper';

export class GamesForm extends React.Component {
  
  componentDidMount = async () => {
    const games = await getAllGames();
    this.setState({
      games
    });
  }
  handleChange = (event) => {
    const { name, value } = event.target
    this.setState(prevState => ({
      formData: {
        ...prevState.formData,
        [name]: value
      }
    }));
  }
  createSubmit = async (id) => {
    const newGame = await postGenreGame
      (this.state.formData);
    this.setState(prevState => ({
      games: [
        ...prevState.games,
        newGame
      ]
    }));
    this.props.history.push(`game_genre/${id}/games`);
  }

  removeGame = async (gameId) => {
    await deleteGenreGame(gameId);
    this.setState(prevState => ({
      games: prevState.games.filter(game => game.id !== gameId)
    }));
    this.props.history.push(`/`)
  }


  render() {
    return (
      <div>
  
        
      </div>
    )
  }
}

export default withRouter(GamesForm)
