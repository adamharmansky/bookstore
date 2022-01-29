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
			<h1> Books </h1>
			<form className="SearchForm" name="search_form">
					<input name="q" type="text" placeholder="Zadajte meno knihy..."/>
			</form>
			<div className='BookList'>
				{bookList.map((value, key) => {
					return (
						<a className='BookListItem' href={thisPageUrl.href + value.isbn}>
								<img className='BookListItemImage' src={value.image ? value.image : process.env.PUBLIC_URL + "/reading.png"} alt='Missing'></img>
								<div className='BookListItemInfo'>
									<div className='BookListItemTitle'> {value.title} </div>
									<div className='BookListItemAuthor'> {value.author_name} </div>
									<div className="BookListItemPublish"> {value.publisher_name ? value.publisher_name : "MICV Publishing INC."} </div>
									<div className="BookListItemYear"> {value.year_pub} </div>
								</div>
								<p className='BookListDescription'> {value.description ? value.description.slice(0,330) + (value.description.length > 330 ? "..." : "") : "No Description"} </p>
						</a>
					)
				})}
				<p> {bookList.length === 0 ? "No matches Found." : ""} </p>
			</div>
		</div>
	)
}
