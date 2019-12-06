import React from 'react';
import { Link } from 'react-router-dom';
import { getGenreGames } from '../services/api-helper'

export default class GamesForm extends React.Component {
  constructor() {
    super();
    this.state = {
      game: null
    }
  }

  async componentDidMount() {
    const game = await getGenreGames
      (parseInt(this.props.genre_id))
      console.log(game)
    this.setState({
      game
    })
  }

  render() {
    const { game } = this.state
    return (
      <div id="games">
        {
          game && (game.map(game => (
            <div>
              <h2>{game.name}</h2>
              <h3>{game.description}</h3>
              <img className="game_pic" src={game.img_url} alt="game covers" />
              <Link to={`/create_game`}>
            <button className="game_button">Edit Game</button>
          </Link>
            <button className="game_button" onClick={this.handleDelete}>Delete</button>
            </div>
          )))
        }
        <Link to={`/create_game`}>
          <button className="game_button">Add Game</button>
        </Link>
      </div>
    )
  }
}
