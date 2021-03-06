import React from 'react'
import { Link } from 'react-router-dom';

export default function Home(props) {
  return (
    <div id="intro">
      {props.currentUser ?
        <>
          <h2>Hello</h2>
          <h3>See some game genre. Learn a bit more and see if you would enjoy that type, even add some games to the genre.</h3>
          <h3>Explore Some Genres and See What You'd Enjoy</h3>
          <Link to="/select_genre">
            <button onClick={props.audioF} id="start">Find A Genre</button>
          </Link>
        </>
        :
        <h1 id="p-login">Please log in.
        
        <p id="text">If you don't have an account please click on "register", make an account, click "submit", click on "what player are you" and login in to view project.</p></h1>
        
      }
     
    </div>
  )
}
