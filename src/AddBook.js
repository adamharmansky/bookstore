import React from 'react'
// import Axios from 'axios'
import TextField from '@material-ui/core/TextField'
import Autocomplete from '@material-ui/core/Autocomplete'
import './App.css'

// const config = require('./config')

export default function AddBook() {
//	const [title, setTitle] = React.useState("")
//	const [author, setAuthor] = React.useState("")
//	const [description, setDescription] = React.useState("")
//	const [subject, setSubject] = React.useState("")
	const [subjects, setSubjects] = React.useState([])

	React.useEffect(() => {
//		Axios.get(config.apiUrl + 'subject/list').then((data) => {
//			console.log(data)
//			let options = []
//			for (let i = 0; i < data.data.length; i++)
//				options.push(data.data[i].name)
//			setSubjects(data.data[0])
//		})
			setSubjects(['SJL', 'ANJ', 'MAT'])
	}, [])

//	function handleSubmit (e) {
//		Axios.post(config.apiUrl + 'book/new/', {
//			title: title,
//			author: author,
//			desc: description,
//			subject: subject,
//
//			author
//			title
//			subject
//			keywords
//			desc
//			read_time
//			pages
//			year_pub
//			lang
//			isbn
//			image
//		}).then((response) => {
//			console.log(response)
//		})
//	}

	return (
		<div className='AddBookForm'>
			{/*
			<input type="text"
				name="title"
				onChange={(e)=>{setTitle(e.target.value)}}
			/>
			<input type="text"
				name="author"
				onChange={(e)=>{setAuthor(e.target.value)}}
			/>
			<input type="text"
				name="description"
				onChange={(e)=>{setDescription(e.target.value)}}
			/>
			<input type="text"
				name="subject"
				onChange={(e)=>{setSubject(e.target.value)}}
			/>
			<button onClick={handleSubmit}> Pridať </button>
			*/}

			<Autocomplete options={subjects} style={{width: 300}}
				renderInput={ (params) => <TextField {...params} label='Predmet' variant='outlined' /> }
			/>
		</div>
	)
}
