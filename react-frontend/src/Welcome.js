import React from 'react';
import { useNavigate } from 'react-router-dom';
import API from './Api/Api'; // Import the API object

const Welcome = () => {
  const email = localStorage.getItem('email'); // Get the email from local storage
  const navigate = useNavigate(); // Create a navigate function

  const handleSignOut = () => {
    API.signOutUser(); // Sign out the user
    navigate('/'); // Redirect to the home page
  };

  return (
    <div>
      <h1>Welcome, {email}!</h1>
      <p>You are now signed in.</p>
      <button onClick={handleSignOut}>Sign Out</button> {/* Add a sign out button */}
    </div>
  );
};

export default Welcome;
