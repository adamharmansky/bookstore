import React from 'react'
import Axios from 'axios'
import './App.css'

export default function BookList() {
	const [bookList, setBookList] = React.useState([])

	React.useEffect(() => {
		Axios.get('http://localhost:3001/api/list').then((data) => {
			console.log(data)
			setBookList(data.data)
		})
	}, [])

	const thisPageUrl = new URL('/book/', window.location.href)
	return (
		<div>
			<h1> Books </h1>
			<div className='BookList'>
				{bookList.map((value, key) => {
					return (
						<a className='BookListItem' href={thisPageUrl.href + value.isbn}>
							<div className='BookListItemAuthor'> {value.author_name} </div>
							<div className='BookListItemTitle'> {value.title} </div>
							<div className='BookListDescription'> {value.description ? value.description : "No Description"} </div>
						</a>
					)
				})}
			</div>
		</div>
	)
}
