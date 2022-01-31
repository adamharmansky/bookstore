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
		<div className="BookPageContainer">
            <h1 className="BookPageTitle"> {bookData.title} </h1>
            <h2 className="BookPageAuthor"> {bookData.author} </h2>
            <div className="BookPageText">
                <div className="BookPageLeft">
                    <img src={bookData.image ? bookData.image : "/reading.png"} alt='Chýbajúci obrázok' className='BookPageImage' />
                    <h2>OBSAH</h2>
                    <p className="BookPageContent">{bookData.content ? bookData.content : "Chýbajúci obsah"}</p>
                </div>

                <div className="BookPageRight">
                    <h2>O KNIHE</h2>
                    <p>{bookData.desc}</p>
                    <span className="BookPageInfo">
                        Priemerný čas čítania: {bookData.read_time} <br/>
                        Počet strán: {bookData.pages} <br/>
                        Rok vydania: {bookData.year_pub} <br/>
                    </span>
                    <h2>ÚRYVOK</h2>
                    <p>{bookData.sample}</p>
                    <h2>KĽÚČOVÉ SLOVÁ</h2>
                    <p2>{bookData.keywords}</p2>
                </div>
            </div>
		</div>
	)
}
