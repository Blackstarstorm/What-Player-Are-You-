import React from 'react';
import { Link } from 'react-router-dom';
import FFsound from '../FFsound.mp3';

export default class SelectGenreForm extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    let audioF = new Audio(FFsound);
    return (
      <section>
        <div id="genre_title">
          <h1>Pick a Genre</h1>
        </div>

        <div id="select_genre">
          {
            this.props.game_genres.map(genre => (
              <div key={genre.id}>
                <Link onClick={async () =>
           await audioF.play()} to={`/genres/${genre.id}`}>
                  <p>{genre.genre}</p>
                </Link>
              </div>
            ))
          }
        </div>

      </section>
    )
  }
}
