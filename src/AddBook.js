import React from 'react'
import Axios from 'axios'
import './App.css'

const config = require('./config')

export default function AddBook() {
	const [form, setForm] = React.useState({
		title: "",
		author: ""
	})

	function handleSubmit (e) {
		Axios.post(config.apiUrl + 'book/new/', form).then((response) => {
			console.log(response)
		})
	}

	function handleChange(e) {
		setForm({...form, [e.target.name]: e.target.value})
	}


	return (
		<form onSubmit={handleSubmit}>
			<label>
				Názov knihy:
				<input name="title" type="text" value={form.title} onChange={handleChange} />
			</label>
			<label>
				Meno autora:
				<input name="author" type="text" value={form.author} onChange={handleChange} />
			</label>
		</form>
	)
}
