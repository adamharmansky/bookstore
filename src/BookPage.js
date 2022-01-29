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
				<h1> {bookData.title} </h1>
				<i> {bookData.author_name} </i>
			</center>
			<img src={bookData.image ? bookData.image : '%PUBLIC_URL%/reading.png'} alt='Bruh' className='BookPageImage' />
			<p> {bookData.description} </p>
		</div>
	)
}
