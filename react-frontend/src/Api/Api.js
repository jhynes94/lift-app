
//Create User account
fetch('http://localhost:3000/users', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify({
    user: {
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'password'
    }
  }),
})
.then(response => response.json())
.then(data => console.log(data))
.catch((error) => {
  console.error('Error:', error);
});


//Sign In
fetch('http://localhost:3000/users/sign_in', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify({
    user: {
      email: 'test@example.com',
      password: 'password',
    }
  }),
})
.then(response => response.json())
.then(data => {
  console.log(data);
  // Here you would typically store the user's authentication token in local storage
  // or in a cookie for use in future authenticated requests.
})
.catch((error) => {
  console.error('Error:', error);
});
