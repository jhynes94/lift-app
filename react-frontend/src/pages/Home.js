import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Button from 'react-bootstrap/Button';

import ProgramList from '../components/ProgramsList'

function Home() {
  return (
    <div className="Home">

      <Container>
        <Row>
          <Col><h1>Table of current Programs available</h1></Col>
        </Row>
        <Row>
          <Col><a href="#" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Create a Program</a></Col>
        </Row>
        <Row>
          <Col><ProgramList /></Col>
        </Row>
      </Container>
    </div>
  );
}

export default Home;
