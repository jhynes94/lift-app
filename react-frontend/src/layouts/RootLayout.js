import { NavLink, Outlet } from "react-router-dom";

//Styles
import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import NavDropdown from 'react-bootstrap/NavDropdown';


export default function RootLayout() {
	return (
		<div className="root-layout">
			<Navbar expand="lg" className="bg-body-tertiary">
				<Container>
					<Navbar.Brand href="/">Fitness App</Navbar.Brand>
					<Navbar.Toggle aria-controls="basic-navbar-nav" />
					<Navbar.Collapse id="basic-navbar-nav">
						<Nav className="me-auto">
							<NavLink href="/">Home</NavLink>
							<NavLink href="/about">About</NavLink>
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
