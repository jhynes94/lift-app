import React, { useState } from 'react';

const SignIn = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState(null);

  const handleSubmit = async (event) => {
    event.preventDefault();

    const response = await fetch('http://localhost:3000/users/sign_in', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        user: {
          email,
          password,
        },
      }),
    });

    const data = await response.json();

    if (response.ok) {
      // Save the token in local storage (or wherever you want to store it)
      localStorage.setItem('token', data.token);
    } else {
      setError(data.error);
    }
  };

  return (
    <form onSubmit={handleSubmit}>
      <h2>Sign In</h2>

      {error && <div>{error}</div>}

      <div>
        <label>Email:</label>
        <input type="email" value={email} onChange={(e) => setEmail(e.target.value)} required />
      </div>

      <div>
        <label>Password:</label>
        <input type="password" value={password} onChange={(e) => setPassword(e.target.value)} required />
      </div>

      <button type="submit">Sign In</button>
    </form>
  );
};

export default SignIn;
