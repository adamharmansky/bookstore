import React from 'react'
import Axios from 'axios'
import './App.css'

const config = require('./config')

export default function BookList() {
	const [bookList, setBookList] = React.useState([])

	React.useEffect(() => {
		const url = new URL(window.location.href)
		// el baile del troleo
		Axios.get(config.apiUrl + 'list' + url.search).then((data) => {
			console.log(data)
			setBookList(data.data)
		})
	}, [])

	const thisPageUrl = new URL('/book/', window.location.href)
	return (
		<div>
			<h1> Books </h1>
			<form name="search_form">
					<input name="q" type="text" />
			</form>
			<div className='BookList'>
				{bookList.map((value, key) => {
					return (
						<a className='BookListItem' href={thisPageUrl.href + value.isbn}>
                            <img className='BookListItemImage' src={value.image ? value.image : "www.harmansky.xyz/vlc.png"} alt='Missing'></img>
                            <div className='BookListItemInfo'>
    							<div className='BookListItemAuthor'> {value.author_name} </div>
	    						<div className='BookListItemTitle'> {value.title} </div>
                            </div>
							<div className='BookListDescription'> {value.description ? value.description : "No Description"} </div>
						</a>
					)
				})}
			</div>
		</div>
	)
}
