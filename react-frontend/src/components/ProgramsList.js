import Button from 'react-bootstrap/Button';
import Card from 'react-bootstrap/Card';
import benchPress from '../assets/BenchPressDude.gif'

function ProgramList() {
  return (
    <Card style={{ width: '18rem' }}>
      <Card.Img variant="top" src={benchPress} />
      <Card.Body>
        <Card.Title>Card Title</Card.Title>
        <Card.Text>
          Some quick example text to build on the card title and make up the
          bulk of the card's content.
        </Card.Text>
        <Button variant="primary">Go somewhere</Button>
      </Card.Body>
    </Card>
  );
}

export default ProgramList;
