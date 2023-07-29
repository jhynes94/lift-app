import { NavLink, Outlet } from "react-router-dom";

//Styles
import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';


export default function RootLayout() {

	const signed_in = false

	return (
		<div className="root-layout">
			<Navbar expand="lg" className="bg-body-tertiary">
				<Container>
					<Navbar.Brand href="/">Fitness App</Navbar.Brand>
					<Navbar.Toggle aria-controls="basic-navbar-nav" />
					<Navbar.Collapse id="basic-navbar-nav">
						<Nav className="me-auto">
							<Nav.Link href="/">Home</Nav.Link>
							<Nav.Link href="/about">About</Nav.Link>
							{ signed_in == false ? <Nav.Link href="/SignIn">Sign In</Nav.Link> : ''}
						</Nav>
					</Navbar.Collapse>
				</Container>
			</Navbar>

			<main>
				<Outlet />
			</main>

		</div>
	)
}
