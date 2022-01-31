import React from 'react'
import Axios from 'axios'
import './App.css'

const config = require('./config')
// const cssData = {
//     "mat": { "mainColor": "#ffffff", "secColor": "#fffffa", "tertColor": "#fffff0", "backgnd": "mat_bgnd.png" },
//     "fyz": { "mainColor": "#ffffff", "secColor": "#fffffa", "tertColor": "#fffff0", "backgnd": "fyz_bgnd.png" },
//     "che": { "mainColor": "#ffffff", "secColor": "#fffffa", "tertColor": "#fffff0", "backgnd": "che_bgnd.png" },
//     "bio": { "mainColor": "#ffffff", "secColor": "#fffffa", "tertColor": "#fffff0", "backgnd": "bio_bgnd.png" },
//     "geo": { "mainColor": "#ffffff", "secColor": "#fffffa", "tertColor": "#fffff0", "backgnd": "geo_bgnd.png" },
//     "sjl": { "mainColor": "#ffffff", "secColor": "#fffffa", "tertColor": "#fffff0", "backgnd": "sjl_bgnd.png" },
//     "dej": { "mainColor": "#ffffff", "secColor": "#fffffa", "tertColor": "#fffff0", "backgnd": "dej_bgnd.png" },
//     "obn": { "mainColor": "#ffffff", "secColor": "#fffffa", "tertColor": "#fffff0", "backgnd": "obn_bgnd.png" },
//     "eko": { "mainColor": "#ffffff", "secColor": "#fffffa", "tertColor": "#fffff0", "backgnd": "eko_bgnd.png" }
// }

export default function BookPage() {
 	const [bookData, setBookData] = React.useState([])

	React.useEffect(() => {
		Axios.get(config.apiUrl + 'book/?book=' + window.location.pathname.match('[^/]*$')).then((data) => {
			console.log(data)
			setBookData(data.data[0])
		})
	}, [])

	return (
		<div className="BookPageInfo">
			<center>
				<h1> {bookData.title} </h1>
				<i> {bookData.author} </i>
			</center>
			<img src={bookData.image ? bookData.image : "/reading.png"} alt='Chýbajúci obrázok' className='BookPageImage' />
			<center>
				<p>{bookData.year_pub}, {bookData.pages} strán, {bookData.read_time}, {bookData.lang}, {bookData.subject}</p>
			</center>
			<p> {bookData.desc} </p>
		</div>
	)
}
