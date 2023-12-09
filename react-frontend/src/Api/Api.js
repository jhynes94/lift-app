// api.js

const API = {
  createUser: async (email, password, passwordConfirmation) => {
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
      localStorage.setItem('token', data.token);
      localStorage.setItem('email', email);
    }

    return data;
  },

  signInUser: async (email, password) => {
    const response = await fetch('http://localhost:3000/sessions', {
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
      localStorage.setItem('token', data.token);
      localStorage.setItem('email', email);
    }

    return data;
  },

  signOutUser: () => {
    localStorage.removeItem('token');
    localStorage.removeItem('email');
  },
};

export default API;
