import React from 'react';
import { Link } from 'react-router-dom';

export default function EditGamesForm(props) {
  return (
    <div>
      <form className="game_data" onSubmit={(event) => {
        event.preventDefault();
        props.handleEditGameSubmit(props.id, props.genre_id);

      }
      }>
        <label htmlFor="name">Name</label>
        <input
          type="text"
          name="name"
          id="name"
          value={props.name}
          onChange={props.handleChange}
        />
        <label htmlFor="description">Description</label>
        <input
          type="text"
          name="description"
          id="description"
          value={props.description}
          onChange={props.handleChange}
        />
        <label htmlFor="img_url">Image</label>
        <input
          type="text"
          name="img_url"
          id="img_url"
          value={props.img_url}
          onChange={props.handleChange}
        />
        
      </form>
      <Link to={`/select_genre`}>
            <button className="back_button">Back</button>
          </Link>
      <button className="edit_game">Edit</button>
    </div>
  )
}
