import React from 'react'

export default function CreateGamesForm(props) {
  const { formData } = props;
  return (
    <div>
      <form onSubmit={props.handleSubmit}>
         <label htmlFor="name">name</label>
        <input
          type="text"
          name="name"
          id="name"
          value={props.formData.name}
          onChange={props.handleChange}
        />
        <br />
        <label htmlFor="description">description</label>
        <input
          type="text"
          name="description"
          id="description"
          value={props.formData.description}
          onChange={props.handleChange}
        />
        <br />
             <label htmlFor="img_url">image</label>
        <input
          type="text"
          name="img_url"
          id="img_url"
          value={props.formData.img_url}
          onChange={props.handleChange}
        />
        <br />
      </form>
    </div>
  )
}
