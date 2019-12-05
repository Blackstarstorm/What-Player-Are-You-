import React from 'react'
import { Link } from 'react-router-dom';

export default function Home() {
  return (
    <div id="intro">
      <h2>Hello User</h2>

      <p>This is a quiz to see what game-genre, you're mostly likely to enjoy, even if you're a gamer/non-gamer .I did my best to make questions and answers people of who play the genre the most. </p>

      <h3>Have Fun With the Quiz </h3>
      <Link to="/quiz">
        <button id="start">TAKE THE QUIZ</button>
      </Link>
    </div>
  )
}
