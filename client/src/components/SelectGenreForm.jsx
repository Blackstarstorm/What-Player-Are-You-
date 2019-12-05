import React from 'react';
import { Link } from 'react-router-dom';

export default function SelectGenreForm(props) {
  return (
    <section>
      <div id="genre_title">
        <h1>Pick a Genre</h1>
      </div>

      <div id="select_genre">
        {
          props.game_genres.map(genre => (
            <div key={genre.id}>
              <Link to={`/genres/${genre.id}`}>
                <p>{genre.genre}</p>
              </Link>
            </div>
          ))
        }
      </div>

    </section>
  )
}
