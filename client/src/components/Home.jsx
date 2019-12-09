import React from 'react'
import { Link } from 'react-router-dom';

export default function Home() {
  return (
    <div id="intro">
      <h2>Hello User</h2>

      <h3>Please make you login and/or Register before you do anything</h3>

     
      <h3>Explore Some Genres and See What You'd Enjoy</h3>
      <Link to="/select_genre">
        <button id="start">Find A Genre</button>
      </Link>
      </div>  
  )
    }
