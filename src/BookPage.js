import React from 'react'
import Axios from 'axios'
import './App.css'

const config = require('./config')

export default function BookPage() {
	const [bookData, setBookData] = React.useState([])

	React.useEffect(() => {
		Axios.get(config.apiUrl + 'book/?book=' + window.location.pathname.match('[^/]*$')).then((data) => {
			console.log(data)
			setBookData(data.data[0])
		})
	}, [])

	return (
		<div>
			<center>
				<i> {bookData.author_name} </i>
				<h1> {bookData.title} </h1>
			</center>
			<p> {bookData.description} </p>
			<img src='{bookData.image}' alt='Bruh' className='BookPageImage' />
		</div>
	)
}
