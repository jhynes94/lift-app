//Styleing
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';

//Components
import ProgramList from '../components/ProgramsList'

function Dashboard() {
  return (
    <div className="Dashboard">

      <Container>
        <Row>
          <Col><h1>Fitness programs:</h1></Col>
          <Col><a href="#" className="btn btn-primary btn-lg active float-end" role="button" aria-pressed="true">Create a Program</a></Col>
        </Row>
      </Container>
      <Container>
        <ProgramList />
      </Container>

    </div>
  );
}

export default Dashboard;
