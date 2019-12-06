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
    console.log("test")
    const genre = await getOneGameGenre(this.props.genre_id)
    console.log(genre)
    this.setState({
      genre
    })
  }

  render() {
    const { genre } = this.state
    console.log(genre)
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
                <p>{fact.fact}</p>
              ))
          }
          <h2>Some Game Examples:</h2>
            {
            genre.genre_images.map(image => (
              <img className="game_title"
                src={image.img_url} />
              ))
          }

          <Link to="/genres/:genre_id/games">
            <button>Games for this genre</button>
          </Link>
          </>
        }
      </div>
    )
  }
}
