import React from 'react';
import { Link } from 'react-router-dom';
import { getOneGameGenre } from '../services/api-helper';

export default class GameGenreForm extends React.Component {
  constructor() {
    super();
    this.state = {
      genre: null
    }
  }

  async componentDidMount() {
    const genre = await getOneGameGenre(this.props.genre_id)
    this.setState({
      genre
    })
    this.props.updateGameGenre(this.props.genre_id)
  }

  render() {
    const { genre } = this.state
    return (
      <div className='genre_type'>
        {genre &&
          <>
            <h2>"{genre.genre}" Genre</h2>
            <h3>Description:{genre.description}
            </h3>
            <h2>Facts:</h2>
            {
              genre.genre_facts.map(fact => (
                <h3>{fact.fact}</h3>
              ))
          }
          <h2>Some Game Titles:</h2>
            {
            genre.genre_images.map(image => (
              <div id="titles_area">
              <img className="game_title"
                  src={image.img_url} alt="video game titles" />
                </div>
              ))
          }
           <Link to={`/select_genre`}>
            <button className="game_genre_button">Back</button>
          </Link>

          <Link to={`/genres/${genre.id}/games`}>
            <button className="game_genre_button">Games for this genre</button>
          </Link>
          </>
        }
      </div>
    )
  }
}
