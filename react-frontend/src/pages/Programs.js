import React, { useEffect, useState } from "react";
import axios from 'axios'
import { useParams } from 'react-router-dom';
const API_ENDPOINT = process.env.REACT_APP_API_ENDPOINT


function Programs() {

	const { programId } = useParams();


	const [program, setProgram] = useState([]);
	const [phases, setPhases] = useState([]);

	useEffect(() => {
		axios.get(`${API_ENDPOINT}/programs/${programId}`).then((data) => {
			console.log(data);
			setProgram(data?.data);
		});
	}, []);

	useEffect(() => {
		axios.get(`${API_ENDPOINT}/programs/${programId}/phases`).then((data) => {
			console.log(data);
			setPhases(data?.data);
		});
	}, []);


	return (

		<div>
			<h1>{program.name}</h1>
			<p>{program.description}</p>

			{phases.map((phase, index) => {
				return (
					<p>{phase.name}</p>
				)})
			}
		</div>


	)

}

export default Programs
