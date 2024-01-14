import React from 'react';
import { useNavigate } from 'react-router-dom';
import API from '../Api/Api'; // Import the API object
import { useEffect, useState } from 'react';

const Welcome = () => {
  //const email = localStorage.getItem('email'); // Get the email from local storage
  const navigate = useNavigate(); // Create a navigate function


  const [email, setEmail] = useState(localStorage.getItem('email')); // Get the email from local storage
  const [welcomedeets, setWelcomeDeets] = useState([]);
  console.log(localStorage.getItem('email'))

  useEffect(() => {
    let ignore = false;
    API.getWelcomeDetails().then(result => {
      if (!ignore) {
        setWelcomeDeets(result)
        console.log(result)
      }
    });
    return () => {
      ignore = true;
    };
  }, []);


  const handleSignOut = () => {
    API.signOutUser(); // Sign out the user
    navigate('/'); // Redirect to the home page
  };

  return (
    <div>
      <h1>Welcome, {email}!</h1>
      <p>You are now signed in.</p>

      <div className="">
        {welcomedeets.map(
          ({
            id,
            name,
            description
          }) => (
            <div key={id}>
              <h2>{name}</h2>
              <p>{description}</p>
            </div>
          )
        )}
      </div>

      <button onClick={handleSignOut}>Sign Out</button>
    </div>
  );
};

export default Welcome;
