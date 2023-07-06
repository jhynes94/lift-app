import React, { useEffect, useState } from "react";
import axios from 'axios'

const [programs, setPrograms] = useState([]);

useEffect(() => {
	axios.get("http://localhost:3000/programs/3").then((data) => {
		console.log(data);
		setPrograms(data?.data);
	});
}, []);


function Programs() {
	return <h1>Hello Program! Check the console</h1>

}

export default Programs
