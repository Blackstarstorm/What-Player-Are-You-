import React from 'react'

export default function EditGamesForm(props) {
  console.log(props)
  return (
    <div>
      <form className="game_data" onSubmit={(event) => {
        event.preventDefault();
        props.handleEditGameSubmit(props.id, props.genre_id);

      }
      }>
        <label htmlFor="name">name</label>
        <input
          type="text"
          name="name"
          id="name"
          value={props.name}
          onChange={props.handleChange}
        />
        <label htmlFor="description">description</label>
        <input
          type="text"
          name="description"
          id="description"
          value={props.description}
          onChange={props.handleChange}
        />
        <label htmlFor="img_url">image</label>
        <input
          type="text"
          name="img_url"
          id="img_url"
          value={props.img_url}
          onChange={props.handleChange}
        />
        <button>Edit</button>
      </form>

    </div>
  )
}
