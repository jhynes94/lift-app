import 'bootstrap/dist/css/bootstrap.min.css';
import RootLayout from './layouts/RootLayout'

// Pages
import Home from './pages/Home'
import Programs from './pages/Programs'
import SignIn from './pages/SignIn';
import SignUp from './pages/SignUp';
import About from './pages/About';

import {
  createBrowserRouter,
  Route,
  RouterProvider,
} from "react-router-dom";


const router = createBrowserRouter([
  {
    path: "/",
    element: <RootLayout />,
    children: [
      {
        index: true,
        element: <Home />,
     },
     {
       path: "SignIn",
       element: <SignIn />,
     },
     {
       path: "SignUp",
       element: <SignUp />,
     },
     {
       path: "About",
       element: <About />,
     }
    ],
  },
  {
    path: "programs/:programId",
    element: <Programs />,
  }
]);

function App() {
  return (
    <RouterProvider router={router} />
  );
}

export default App;
