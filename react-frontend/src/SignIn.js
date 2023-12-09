import React, { useState } from 'react';
import API from './Api/Api'; // Import the API object
import { useNavigate } from 'react-router-dom';

const SignIn = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const navigate = useNavigate(); // Use useNavigate instead of useHistory

  const handleSubmit = async (event) => {
    event.preventDefault();
    try {
      const data = await API.signInUser(email, password);
      // Check if sign in was successful before redirecting
      if (data.token) {
        navigate('/welcome'); // Use navigate instead of history.push
      } else {
        // Handle sign in failure
        console.log("response.error");
      }
    } catch (error) {
      console.error(error);
    }
  };

  return (
    <form onSubmit={handleSubmit}>
      <label>
        Email:
        <input type="email" value={email} onChange={e => setEmail(e.target.value)} required />
      </label>
      <label>
        Password:
        <input type="password" value={password} onChange={e => setPassword(e.target.value)} required />
      </label>
      <input type="submit" value="Sign In" />
    </form>
  );
};

export default SignIn;
