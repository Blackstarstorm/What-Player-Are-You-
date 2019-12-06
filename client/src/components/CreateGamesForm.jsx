import React from 'react'

export default function CreateGamesForm(props) {
  const { formData } = props;
  return (
    <div>
      <form className="game_data" onSubmit={props.handleAddGameSubmit}>
         <label htmlFor="name">name</label>
        <input
          type="text"
          name="name"
          id="name"
          value={formData.name}
          onChange={props.handleChange}
        />
        <br />
        <label htmlFor="description">description</label>
        <input
          type="text"
          name="description"
          id="description"
          value={formData.description}
          onChange={props.handleChange}
        />
        <br />
        <label htmlFor="img_url">image</label>
        <input
          type="text"
          name="img_url"
          id="img_url"
          value={formData.img_url}
          onChange={props.handleChange}
        />
        <br />
        <button>Add Game</button>
      </form>
    </div>
  )
}
