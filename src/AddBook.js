import React from 'react'
import Axios from 'axios'
import TextField from '@material-ui/core/TextField'
import Button from '@material-ui/core/Button'
import Autocomplete from '@material-ui/lab/Autocomplete'
import './App.css'

const config = require('./config')

export default function AddBook() {
	const [title, setTitle] = React.useState("")
	const [author, setAuthor] = React.useState("")
	const [description, setDescription] = React.useState("")
	const [subject, setSubject] = React.useState("")
	const [keywords, setKeywords] = React.useState("")
	const [readTime, setReadTime] = React.useState("")
	const [pageCount, setPageCount] = React.useState(0)
	const [yearPub, setYearPub] = React.useState(0)
	const [lang, setLang] = React.useState("")
	const [isbn, setIsbn] = React.useState(0)
	// const [image, setImage] = React.useState("")
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

	function handleSubmit (e) {
		Axios.post(config.apiUrl + 'book/new/', {
			title : title,
			author: author,
			desc: description,
			subject: subject,
			keywords: keywords,
			read_time: readTime,
			pages: pageCount,
			year_pub: yearPub,
			lang: lang,
			isbn: isbn,
			// image: image

		}).then((response) => {
			console.log(response)
		})
	}

	return (
		<div className='AddBookForm'>
			<TextField style={{width: 300}} label='Názov knihy' onChange={(e)=>{setTitle(e.target.value)}} />
			<TextField style={{width: 300}} label='Autor' onChange={(e)=>{setAuthor(e.target.value)}} />
			<TextField style={{width: 300}} label='Popis' onChange={(e)=>{setDescription(e.target.value)}} />
			<Autocomplete disablePortal options={subjects} style={{width: 300}}
				renderInput={ (params) => <TextField {...params} label='Predmet' variant='outlined' onChange={(e)=>{setSubject(e.target.value)}} /> } />
			<TextField style={{width: 300}} label='Kľúčové slová' onChange={(e)=>{setKeywords(e.target.value)}} />
			<TextField style={{width: 300}} label='Čas čítania' onChange={(e)=>{setReadTime(e.target.value)}} />
			<TextField style={{width: 300}} label='Počet strán' onChange={(e)=>{setPageCount(parseInt(e.target.value))}} />
			<TextField style={{width: 300}} label='Rok vydania' onChange={(e)=>{setYearPub(parseInt(e.target.value))}} />
			<TextField style={{width: 300}} label='Jazyk' onChange={(e)=>{setLang(e.target.value)}} />
			<TextField style={{width: 300}} label='ISBN' onChange={(e)=>{setIsbn(parseInt(e.target.value))}} />
			<TextField style={{width: 300}} label='Obrázok' onChange={(e)=>{setIsbn(e.target.value)}} />
			<Button onClick={handleSubmit}> Pridať </Button>
		</div>
	)
}
