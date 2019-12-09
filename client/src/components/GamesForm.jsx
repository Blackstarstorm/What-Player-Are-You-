import React from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';
import { getGenreGames, deleteGame } from '../services/api-helper'

export default class GamesForm extends React.Component {
  constructor() {
    super();
    this.state = {
      games: []
    }
  }

  async componentDidMount() {
    const games = await getGenreGames
      (parseInt(this.props.genre_id))
    console.log(games)
    this.setState({
      games
    })
  }

  handleDelete = async (event) => {
    const id = event.target.id
    const game = await deleteGame(id)
    console.log(game)
    this.setState(prevState => ({
      games: prevState.games.filter(game => game.id !== parseInt(id))
    }))
    alert(`${game.name} was DESTROYED!`)
  }

  render() {
    const { games } = this.state
    console.log(games)
    return (
      <div id="games">
        {
          games.map(game => (
            <div>
              <h2>{game.name}</h2>
              <h3>{game.description}</h3>
              <img className="game_pic" src={game.img_url} alt="game covers" />
              <Link to={`/genres/${game.game_genre.id}/games/${game.id}/edit`}>
                <button className="game_button">Edit Game</button>
              </Link>
              <button id={game.id} className="game_button" onClick={this.handleDelete}>Delete</button>
            </div>
          ))
        }
        <Link to={`/create_game`}>
          <button className="game_button">Add Game</button>
        </Link>
      </div>
    )
  }
}
