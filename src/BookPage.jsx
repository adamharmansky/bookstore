import React from 'react'
import Axios from 'axios'
import './App.css'

const config = require('./config')
/* {
      isbn: int,
      title: string,
      subject_name: string,
      subject_colors: [string, string, string],
      subject_bg: string,
      keywords: string,
      authors: [{ id: int, name: string, }, ...],
      desc: string,
      read_time: int,
      pages: int,
      year_pub: int,
      lang: { id: int, name: string, },
      image: string,
      content: string
} */

export default function BookPage() {
 	const [bookData, setBookData] = React.useState([])

	React.useEffect(() => {
		Axios.get(config.apiUrl + 'book/?book=' + window.location.pathname.match('[^/]*$')).then((data) => {
			console.log(data)
			setBookData(data.data[0])
		})
	}, [])

    const authors = [];

    for (const author in bookData.authors) {
        authors.push(<a className="BookPageAuthor" href={"/author/"+author.id}>{author.name}</a>);
    }

    const style = {
        "--subject-pri-clr": bookData.subject_color0,
        "--subject-sec-clr": bookData.subject_color1,
        "--subject-ter-clr": bookData.subject_color2,
        "--subject-bg": bookData.subject_background
    }

	return (
		<div className="BookPageContainer" style={style}>
            <h1 className="BookPageTitle"> {bookData.title} </h1>
            <h2 className="BookPageAuthors"> {authors} </h2>
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
                        ISBN: {bookData.isbn}
                    </span>
                    <h2>ÚRYVOK</h2>
                    <p>{bookData.sample ? bookData.sample : "Chýbajúci úryvok"}</p>
                    <h2>KĽÚČOVÉ SLOVÁ</h2>
                    <p2>{bookData.keywords}</p2>
                </div>
            </div>
		</div>
	)
}
