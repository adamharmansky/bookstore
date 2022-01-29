import React from 'react'
import Axios from 'axios'
import './App.css'

const config = require('./config')

function get_query() {
	const params = new URLSearchParams(window.location.search);
	if (params.has('q')) return params.get('q')
	else return ''
}

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
			<form className="SearchForm" name="search_form">
					<input name="q" type="text" placeholder="Zadajte názov knihy..." defaultValue={get_query()}/>
			</form>
			<div className='BookList'>
				{bookList.map((value, key) => {
					return (
						<a className='BookListItem' href={thisPageUrl.href + value.isbn}>
								<img className='BookListItemImage' src={value.image ? value.image : "/reading.png"} alt='Chýbajúci obrázok'></img>
								<div className='BookListItemBlock'>
									<div className='BookListItemTitle'> {value.title} </div>
									<div className='BookListItemInfo'>
										{value.author}, {value.publisher ? value.publisher : "Neznáme vydavateľstvo"}, {value.year_pub}, {value.pages} strán, {value.read_time}, {value.lang}, {value.subject}
									</div>
									<p className='BookListDescription'> {value.desc ? value.desc.slice(0,360) + (value.desc.length > 360 ? "..." : "") : "Žiaden popis"} </p>
								</div>
						</a>
					)
				})}
				<p> {bookList.length === 0 ? "Neboli nájdené žiadne knihy" : ""} </p>
			</div>
		</div>
	)
}
