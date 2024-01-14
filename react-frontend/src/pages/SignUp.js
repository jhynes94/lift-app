import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';

const SignUp = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [passwordConfirmation, setPasswordConfirmation] = useState('');
  const [error, setError] = useState(null);
  const navigate = useNavigate(); // Use useNavigate instead of useHistory

  const handleSubmit = async (event) => {
    event.preventDefault();

    const response = await fetch('http://localhost:3000/users', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        user: {
          email,
          password,
          password_confirmation: passwordConfirmation,
        },
      }),
    });

    const data = await response.json();

    if (response.ok) {
      // Save the token in local storage (or wherever you want to store it)
      localStorage.setItem('token', data.token);
      localStorage.setItem('email', email); // Save the email in local storage
      navigate('/welcome'); // Use navigate instead of history.push
    } else {
      setError(data.error);
    }
  };

  return (
    <form onSubmit={handleSubmit}>
      <h2>Sign Up</h2>

      {error && <div>{error}</div>}

      <div>
        <label>Email:</label>
        <input type="email" value={email} onChange={(e) => setEmail(e.target.value)} required />
      </div>

      <div>
        <label>Password:</label>
        <input type="password" value={password} onChange={(e) => setPassword(e.target.value)} required />
      </div>

      <div>
        <label>Confirm Password:</label>
        <input type="password" value={passwordConfirmation} onChange={(e) => setPasswordConfirmation(e.target.value)} required />
      </div>

      <button type="submit">Sign Up</button>
    </form>
  );
};

export default SignUp;
