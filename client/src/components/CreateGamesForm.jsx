import React from 'react'
import { Link } from 'react-router-dom';

export default function CreateGamesForm(props) {
  const { formData } = props;
  return (
    <div id="info-data">
      <form className="game_data" onSubmit={props.handleAddGameSubmit}>
        <label htmlFor="name">Name</label>
        <input
          type="text"
          name="name"
          id="name"
          value={formData.name}
          onChange={props.handleChange}
        />
        <br />
        <label htmlFor="description">Description</label>
        <input
          type="text"
          name="description"
          id="description"
          value={formData.description}
          onChange={props.handleChange}
        />
        <br />
        <label htmlFor="img_url">Image</label>
        <input
          type="text"
          name="img_url"
          id="img_url"
          value={formData.img_url}
          onChange={props.handleChange}
        />
        <br />
        <button className="add_game">Add Game</button>
      </form>
      <Link to={`/select_genre`}>
        <button className="back_button">Back</button>
      </Link>
    </div>
  )
}