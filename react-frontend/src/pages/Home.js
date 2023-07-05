import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';

import ProgramList from '../components/ProgramsList'

function Home() {
  return (
    <div className="Home">

      <Container>
        <Row>
          <Col><h1>Table of current Programs available</h1></Col>
        </Row>
        <Row>
          <Col><ProgramList /></Col>
        </Row>
      </Container>
    </div>
  );
}

export default Home;
