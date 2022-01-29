import React from 'react'
import Axios from 'axios'
import './App.css'

const config = require('./config')

export default function BookList() {
	const [bookList, setBookList] = React.useState([])

	React.useEffect(() => {
		const url = new URL(window.location.href)
		Axios.get(config.apiUrl + 'list' + url.search).then((data) => {
			console.log(data)
			setBookList(data.data)
		})
	}, [])

	const thisPageUrl = new URL('/book/', window.location.href)
	return (
		<div>
			<h1> Knihy </h1>
			<form className="SearchForm" name="search_form" value={window.location.href.match('?q=.*$').slice(3, 1024)}>
					<input name="q" type="text" placeholder="Zadajte názov knihy..."/>
			</form>
			<div className='BookList'>
				{bookList.map((value, key) => {
					return (
						<a className='BookListItem' href={thisPageUrl.href + value.isbn}>
								<img className='BookListItemImage' src={value.image ? value.image : "/reading.png"} alt='Chýbajúci obrázok'></img>
								<div className='BookListItemInfo'>
									<div className='BookListItemTitle'> {value.title} </div>
									<div className='BookListItemAuthor'> {value.author_name} </div>
									<div className="BookListItemPublish"> {value.publisher_name ? value.publisher_name : "Neznáme vydavateľstvo"} </div>
									<div className="BookListItemYear"> {value.year_pub} </div>
								</div>
								<p className='BookListDescription'> {value.description ? value.description.slice(0,360) + (value.description.length > 360 ? "..." : "") : "Žiaden popis"} </p>
						</a>
					)
				})}
				<p> {bookList.length === 0 ? "No matches Found." : ""} </p>
			</div>
		</div>
	)
}
