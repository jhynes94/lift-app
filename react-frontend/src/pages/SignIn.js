import { Col, Button, Row, Container, Card, Form } from "react-bootstrap";
import axios from 'axios'
import { useState } from 'react';
const API_ENDPOINT = process.env.REACT_APP_API_ENDPOINT

export default function SignIn() {

  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');


  function SignUpRequest() {
    console.log('Sign Up Request ' + email + ' ' + password)
    axios.post(`${API_ENDPOINT}/login`, {
      user: {
        email: email,
        password: password
      }
    })
      .then(response => {
        // Save the token to local storage
        localStorage.setItem('jwt', response.data.jwt)
        // Set the user in the parent component
        this.props.setUser(response.data.user)
        // Redirect to the home page
        this.props.history.push('/')
      })
      .catch(error => console.log('api errors:', error))
  }


  return (
    <div>
      <Container>
        <Row className="vh-100 d-flex justify-content-center align-items-center">
          <Col md={8} lg={6} xs={12}>
            <div className="border border-3 border-primary"></div>
            <Card className="shadow">
              <Card.Body>
                <div className="mb-3 mt-md-4">
                  <h2 className="fw-bold mb-2 text-uppercase ">Brand</h2>
                  <p className=" mb-5">Please enter your login and password.</p>
                  <div className="mb-3">
                    <Form>
                      <Form.Group className="mb-3" controlId="formBasicEmail">
                        <Form.Label className="text-center">
                          Email address
                        </Form.Label>
                        <Form.Control type="email" placeholder="Enter email" onChange={(event) => {
                          setEmail(event.target.value);
                          }} value={email} />
                      </Form.Group>

                      <Form.Group
                        className="mb-3"
                        controlId="formBasicPassword"
                      >
                        <Form.Label>Password</Form.Label>
                        <Form.Control type="password" placeholder="Password" onChange={(event) => {
                          setPassword(event.target.value);
                          }} value={password} />
                      </Form.Group>
                      <Form.Group
                        className="mb-3"
                        controlId="formBasicCheckbox"
                      >
                        <p className="small">
                          <a className="text-primary" href="#!">
                            Forgot password? <b>ADD MORE</b>
                          </a>
                        </p>
                      </Form.Group>
                      <div className="d-grid">
                        <Button variant="primary" type="submit" onClick={SignUpRequest}>
                          SignIn
                        </Button>
                      </div>
                    </Form>
                    <div className="mt-3">
                      <p className="mb-0  text-center">
                        Don't have an account?{" "}
                        <a href="/SignUp" className="text-primary fw-bold">
                          Sign Up
                        </a>
                      </p>
                    </div>
                  </div>
                </div>
              </Card.Body>
            </Card>
          </Col>
        </Row>
      </Container>
    </div>
  );
}
