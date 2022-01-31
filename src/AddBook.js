import React from 'react'
import Axios from 'axios'
import './App.css'

const config = require('./config')

export default function AddBook() {
	const [title, setTitle] = React.useState("")
	const [author, setAuthor] = React.useState("")

	function handleSubmit (e) {
		Axios.post(config.apiUrl + 'book/new/', {title: title, author: author}).then((response) => {
			console.log(response)
		})
	}

	return (
		<div className='AddBookForm'>
			<input type="text"
				name="title"
				onChange={(e)=>{setTitle(e.target.value)}}
			/>
			<input type="text"
				name="author"
				onChange={(e)=>{setAuthor(e.target.value)}}
			/>
			<button onPress={handleSubmit}> Pridať </button>
		</div>
	)
}
