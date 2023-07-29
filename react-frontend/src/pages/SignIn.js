//Styleing
import Form from 'react-bootstrap/Form';
import Button from 'react-bootstrap/Button';

function SignIn() {
  return (
    <div className="SignIn">

      <Form>
        <h2>Enter UserName and Password Here with Endpoint to Devise</h2>
      </Form>

      <Button href="SignUp" variant="primary">Sign Up</Button>

    </div>
  );
}

export default SignIn;
