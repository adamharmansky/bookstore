import React from 'react'
import {BrowserRouter as Router, Route, Routes} from 'react-router-dom'
import './App.css'
import BookList from './BookList'
import MainPage from './MainPage'
import BookPage from './BookPage'
import AddBook from './AddBook'

function App() {
	return (
		<div className='App'>
			<div className='NavBar'>
				<a className='NavBarButton' href='/'> Domov </a> 
				<a className='NavBarButton' href='/list'> Zoznam kníh </a> 
				<a className='NavBarButton' href='/add'> Pridať knihu </a> 
			</div>
			<main>
				<Router>
					<Routes>
						<Route path='/' element={<MainPage />} />
						<Route path='/list' element={<BookList />} />
						<Route path='/book/*' element={<BookPage />} />
						<Route path='/add' element={<AddBook />} />
					</Routes>
				</Router>
			</main>
		</div>
	)
}

export default App;
