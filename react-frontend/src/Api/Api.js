// api.js
const URL = "http://localhost:3005"

const API = {
  createUser: async (email, password, passwordConfirmation) => {
    const response = await fetch(URL + '/users', {
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
    const response = await fetch(URL + '/users/sign_in', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
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
      console.log("Sign in Successful")
      localStorage.setItem('token', data.token);
      localStorage.setItem('email', email);
      return data;
    }
    else {
      console.log(response)
      console.log(data)
      return null
    }
  },

  signOutUser: () => {
    localStorage.removeItem('token');
    localStorage.removeItem('email');
  },

  getWelcomeDetails: async () => {
    const response = await fetch(URL + '/programs', {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      // body: JSON.stringify({
      //   token: localStorage.getItem('token')
      // }),
    });

    return await response.json();
  },
};

export default API;
