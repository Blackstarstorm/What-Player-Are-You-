import React from 'react';
import { Link } from 'react-router-dom';

export default function Header(props) {
  let username = "";
  if (props.currentUser) username = props.currentUser.username[0].toUpperCase() + props.currentUser.username.slice(1);
  return (
    <header>
    <div>
        <Link id="title"to="/"><h1>What Player Are You?</h1></Link>
        
      {
          props.currentUser ?
            <div>
              <h2>Welcome, {username}!</h2>
              <button className="log" onClick={props.handleLogout}>LogOut</button>
            </div>
            :
          <></>
      }
    </div>

    <nav>
      {
        props.currentUser ?
          <a href="#" onClick={props.handleLogout}>
          </a>
          :
          <Link to="/login">
            <button id="log_reg_button">Login/Register</button>
          </Link>
      }
    </nav>
  </header>
  )
}
