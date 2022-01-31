import React from 'react'
import Axios from 'axios'
import './App.css'

const config = require('./config')

function handleSubmit (title, author) {
	Axios.post(config.apiUrl + 'book/new/', {
		title: title,
		author: author
	}).then((response) => {
		console.log(response)
	})
}

export default function AddBook() {
	const [title, setTitle] = React.useState("")
	const [author, setAuthor] = React.useState("")

	return (
		<form onSubmit={handleSubmit(title, author)}>
			<label>
				Názov knihy:
				<input type="text" value={title} />
			</label>
			<label>
				Meno autora:
				<input type="text" value={author} />
			</label>
		</form>
	)
}
