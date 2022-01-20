import React from 'react'
import Axios from 'axios'
import './App.css'

export default function BookPage() {
	const [bookData, setBookData] = React.useState([])

	React.useEffect(() => {
		Axios.get('http://localhost:3001/api/book/?book=' + window.location.pathname.match('[^/]*$')).then((data) => {
			console.log(data)
			setBookData(data.data[0])
		})
	}, [])

	return (
		<div>
			<i> {bookData.author_name} </i> <h1> {bookData.title} </h1>
			<p> {bookData.description} </p>
		</div>
	)
}
