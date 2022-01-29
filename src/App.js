import React from 'react'
import {BrowserRouter as Router, Route, Routes} from 'react-router-dom'
import './App.css'
import BookList from './BookList'
import MainPage from './MainPage'
import BookPage from './BookPage'

function App() {
	return (
		<div className='App'>
			<div className='NavBar'>
				<div className='NavBarButton'> <a href='/'> Domov </a> </div>
				<div className='NavBarButton'> <a href='/list'> Zoznam kníh </a> </div>
			</div>
			<main>
				<Router>
					<Routes>
						<Route path='/' element={<MainPage />} />
						<Route path='/list' element={<BookList />} />
						<Route path='/book/*' element={<BookPage />} />
					</Routes>
				</Router>
			</main>
		</div>
	)
}

export default App;
