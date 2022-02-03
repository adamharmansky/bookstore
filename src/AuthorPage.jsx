import React from 'react'
import Axios from 'axios'
import './App.css'
import {minutesToReadableTime} from './Utility'

const config = require('./config')

export default function AuthorPage() {
	const [authorData, setAuthorData] = React.useState({})

	React.useEffect(() => {
		Axios.get(config.apiUrl + 'author/?author=' + window.location.pathname.match('[^/]*$')).then((data) => {
			console.log(data)
			setAuthorData(data.data)
		}).catch((err)=>{
			console.log(err);
		})
	}, [])

	return (
		<div className="AuthorPageContainer">
			<h1 className="AuthorPageTitle"> {"Knihy od autora " + authorData.author_name} </h1>
			{authorData.books.map((value) => {
				return (
					<a className='BookListItem' href={'/book/' + value.isbn}>
						<img className='BookListItemImage' src={value.image ? value.image : "/reading.png"} alt='Chýbajúci obrázok'></img>
						<div className='BookListItemBlock'>
							<div className='BookListItemTitle'> {value.title} </div>
							<div className='BookListItemInfo'>
								{value.year_pub}, {value.pages} strán, {minutesToReadableTime(value.read_time)}, {value.lang_name}, {value.subject_name}
							</div>
							<p className='BookListDescription'> {value.desc ? value.desc.slice(0,360) + (value.desc.length > 360 ? "..." : "") : "Žiaden popis"} </p>
						</div>
					</a>
				)
			})}
		</div>
	)
}
