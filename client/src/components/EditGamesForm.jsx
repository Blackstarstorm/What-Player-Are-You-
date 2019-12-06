import React from 'react'

export default class EditGamesForm extends React.Component {
  constructor() {
    super();
    //   this.state = {
    //     games: [],
    //     formData: {
    //       name: '',
    //       description: '',
    //       img_url: ''
    //     }
    //   }
    }
    render(){
      return (
        <div>
          <form onSubmit={(event) => {
            event.preventDefault();
            this.createSubmit();
          }}>
            <label htmlFor="name">name</label>
            <input
              type="text"
              name="name"
              id="name"
              value={this.formData.name}
              onChange={this.handleChange}
            />
            <label htmlFor="description">description</label>
            <input
              type="text"
              name="description"
              id="description"
              value={this.formData.description}
              onChange={this.handleChange}
            />
            <label htmlFor="img_url">image</label>
            <input
              type="text"
              name="img_url"
              id="img_url"
              value={this.formData.img_url}
              onChange={this.handleChange}
            />
          </form>
        </div>
      )
    }
  }
