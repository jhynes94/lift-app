import './App.css';
import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import SignIn from './pages/SignIn';
import SignUp from './pages/SignUp';
import Welcome from './pages/Welcome';
import Home from './pages/Home';

const App = () => (
  <Router>
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/sign_up" element={<SignUp />} />
      <Route path="/sign_in" element={<SignIn />} />
      <Route path="/welcome" element={<Welcome />} />
    </Routes>
  </Router>
);

export default App;
