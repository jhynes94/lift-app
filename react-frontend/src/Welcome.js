import React from 'react';

const Welcome = () => {
  const email = localStorage.getItem('email'); // Get the email from local storage

  return (
    <div>
      <h1>Welcome, {email}!</h1>
      <p>You are now signed in.</p>
    </div>
  );
};

export default Welcome;
