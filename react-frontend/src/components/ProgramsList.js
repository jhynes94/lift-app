import Button from 'react-bootstrap/Button';
import Card from 'react-bootstrap/Card';
import benchPress from '../assets/BenchPressDude.gif'
import React, { useEffect, useState } from "react";
import axios from 'axios'

// reference https://dev.to/femi_dev/how-to-use-axios-with-react-5fom

function ProgramList() {

  const [programs, setPrograms] = useState([]);

  useEffect(() => {
    axios.get("http://localhost:3000/programs").then((data) => {
      console.log(data);
      setPrograms(data?.data);
    });
  }, []);

  // programs.map((anObjectMapped, index) => {
  //   return (
  //     <p key={`${anObjectMapped.name}_{anObjectMapped.email}`}>
  //       {anObjectMapped.name} - {anObjectMapped.email}
  //     </p>
  //   );
  // })

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
