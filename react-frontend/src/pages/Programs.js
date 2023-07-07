import React, { useEffect, useState } from "react";
import axios from 'axios'
import { useParams } from 'react-router-dom';
const API_ENDPOINT = process.env.REACT_APP_API_ENDPOINT


function Programs() {

	const { programId } = useParams();


	const [program, setProgram] = useState([]);

	useEffect(() => {
		axios.get(`${API_ENDPOINT}/programs/${programId}`).then((data) => {
			console.log(data);
			setProgram(data?.data);
		});
	}, []);


	return(

		<div>
			<p>{program.name}</p>
		</div>


	)

}

export default Programs
