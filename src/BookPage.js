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
				<i> {bookData.author} </i>
			</center>
			<img src={bookData.image ? bookData.image : "/reading.png"} alt='Chýbajúci obrázok' className='BookPageImage' />
			<p> {bookData.desc} </p>
		</div>
	)
}
