import React from 'react';
import { Link } from 'react-router-dom';

const HomePage = () => (
  <div>
    <h1>Welcome to Our Website!</h1>
    <p>Please <Link to="/sign_in">sign in</Link> or <Link to="/sign_up">sign up</Link>.</p>
  </div>
);

export default HomePage;
