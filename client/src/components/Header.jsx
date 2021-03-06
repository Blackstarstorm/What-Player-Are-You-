import React from 'react';
import { Link } from 'react-router-dom';

export default function Header(props) {
  let username = "";
  if (props.currentUser) username = props.currentUser.username[0].toUpperCase() + props.currentUser.username.slice(1);

  let handleClick = function () {
    props.audioG();
    props.handleLogout();
  }



  return (
    <header>
      <div>
        <Link onClick={props.audioS} className="title" to="/"><h1>What Player Are You?</h1></Link>

        {
          props.currentUser ?
            <div id="welcome">
              <h2 >Welcome, {username}!</h2>
              <Link to="/"
                onClick={() => { handleClick(); }}><button className="logout">LogOut</button>
              </Link>
            </div>
            :
            <></>
        }
      </div>

      <nav>
        {
          props.currentUser ?
            <a href="/#" onClick={props.handleLogout}>
            </a>
            :
            <Link onClick={props.audioS} to="/login">
              <button id="log_reg_button">Login/Register</button>
            </Link>
        }
      </nav>
    </header>
  )
}
