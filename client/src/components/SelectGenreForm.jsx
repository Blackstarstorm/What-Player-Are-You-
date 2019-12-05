import React from 'react';
import { Link } from 'react-router-dom';

export default function SelectGenreForm(props) {
  return (
    <section>
      <div id="genre_title">
          <h1>Pick a Genre</h1>
      </div>

    <div id="select_genre">
      <div id="RPG">
          <input className="radio" type="radio" name="genre" value="Role-Playing-Game (RPG)" onClick={props.handleClick} /> RPG
      </div>
        
      <div id="Fighting">
          <input className="radio" type="radio" name="genre" value="Fighting" onClick={props.handleClick} /> Fighting
      </div>
        
      <div id="Platformer">
          <input className="radio" type="radio" name="genre" value="Platformer" onClick={props.handleClick} /> Platformer
      </div>
        
      <div id="Rhythm">
          <input className="radio" type="radio" name="genre" value="Rhythm" onClick={props.handleClick} /> Rhythm
      </div>
        
      <div id="Action-Adventure">
          <input className="radio" type="radio" name="genre" value="Action-Adventure" onClick={props.handleClick} /> Action-Adventure
      </div>
        
      <div id="Shooter">
          <input className="radio" type="radio" name="genre" value="Shooter" onClick={props.handleClick} /> Shooter
      </div>
        
      <div id="Puzzles">
          <input className="radio" type="radio" name="genre" value="Puzzles" onClick={props.handleClick} /> Puzzles
      </div>
        
      <div id="Racing">
          <input className="radio" type="radio" name="genre" value="Racing" onClick={props.handleClick} /> Racing
      </div>
        
    </div>

      <form>
        <Link to="/genre">
          <button onSubmit={props.handleSubmit}>Submit</button>
        </Link>
        </form>
  </section>
  )
}
