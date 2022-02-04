import React from 'react'
import Axios from 'axios'
import './App.css'
import {minutesToReadableTime} from './Utility'

const config = require('./config')

export default function BookPage() {
    const [bookData, setBookData] = React.useState([]);

    React.useEffect(() => {
        Axios.get(config.apiUrl + 'book/?book=' + window.location.pathname.match('[^/]*$')).then((data) => {
            console.log(data)
            setBookData(data.data)
        })
    }, []);

    const style = {
        "--subject-clr0": bookData.subject_color0,
        "--subject-clr1": bookData.subject_color1,
        "--subject-clr2": bookData.subject_color2,
        "--subject-bg": bookData.subject_background
    };

    return (
        <div className="BookPageContainer" style={style}>
            <h1> {bookData.title} </h1>
            <h2>
                {
                    bookData.authors ? bookData.authors.map((author, i) => {
                        return(<span><a className="BookPageAuthor" href={"/author/"+author.author_id}>{author.author_name}</a>{i<bookData.authors.length-1?"; ":""}</span>);
                    }) : null
                }
            </h2>
            <div className="BookPageText">
                <img src={bookData.image ? bookData.image : "/reading.png"} alt='Chýbajúci obrázok' className='BookPageImage' />
                <h3>O KNIHE</h3>
                <p>{bookData.desc}</p>
                <span className="BookPageInfo">
                    Priemerný čas čítania: {minutesToReadableTime(bookData.read_time)} <br/>
                    Počet strán: {bookData.pages} <br/>
                    Rok vydania: {bookData.year_pub} <br/>
                    ISBN: {bookData.isbn}
                </span>
                <h3>ÚRYVOK</h3>
                <p>{bookData.sample ? bookData.sample : "Chýbajúci úryvok"}</p>
                <h3>OBSAH</h3>
                <p className="BookPageContent" style={{whiteSpace: "pre-wrap"}}>{bookData.content ? bookData.content.replaceAll(/;\s*/gi,"\n") : "Chýbajúci obsah"}</p>
                <h3>KĽÚČOVÉ SLOVÁ</h3>
                <p2>{bookData.keywords}</p2>
            </div>
        </div>
    );
}
