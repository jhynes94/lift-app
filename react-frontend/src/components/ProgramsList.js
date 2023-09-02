import Button from 'react-bootstrap/Button';
import Card from 'react-bootstrap/Card';
import Col from 'react-bootstrap/Col';
import Row from 'react-bootstrap/Row';
import benchPress from '../assets/BenchPressDude.gif'
import React, { useEffect, useState } from "react";
import axios from 'axios'

// reference https://dev.to/femi_dev/how-to-use-axios-with-react-5fom

function ProgramList() {

  const [programs, setPrograms] = useState([]);

  useEffect(() => {
    axios.get("http://localhost:3001/programs").then((data) => {
      console.log(data);
      setPrograms(data?.data);
    });
  }, []);

  return (
    <Row xs={1} md={3} className="g-4">
      {programs.map((program, index) => {
        return (
          <Col className="d-flex justify-content-center" key={program.id} >
            <Card style={{ width: '18rem' }}>
              <Card.Img variant="top" src={benchPress} />
              <Card.Body>
                <Card.Title>{program.name}</Card.Title>
                <Card.Text>{program.description}</Card.Text>
                <Button href={"programs/" + program.id} variant="primary">Go somewhere</Button>
              </Card.Body>
            </Card>
          </Col>
        )
      })}
    </Row>
  );
}

export default ProgramList;
