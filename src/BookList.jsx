import React from 'react';
import Axios from 'axios';
import './App.css';
import { get_query, get_page } from './Utility';

const config = require('./config');

function minutesToReadableTime(minutes) {
	return ((minutes>=60?Math.floor(minutes/60)+"h ":"")+(minutes%60!==0?minutes%60+"m":""));
}

export default function BookList() {
	var [bookList, setBookList] = React.useState([]);
	var [pageCount, setPageCount] = React.useState(0);

	React.useEffect(() => {
		const url = new URL(window.location.href)
		Axios.get(config.apiUrl + 'list' + url.search).then((data) => {
			console.log(data);
			setBookList(data.data.books);
			setPageCount(data.data.pageCount);
		})
	}, []);

	const pageNumbers = [];
	const current_page = parseInt(get_page());
	const query = get_query();

	if (current_page > 0) pageNumbers.push(<a className="pageNumber" href={"/list?page="+(current_page-1)+(query?"&q="+query:"")}>{"<<"}</a>);
	for (let i = 0; i < pageCount; i++) {
		pageNumbers.push(i === current_page ? <span className="currentPageNumber">{i}</span> : <a className="pageNumber" href={"/list?page="+i+(query?"&q="+query:"")}>{i}</a>);
	}
	if (current_page < pageCount-1) pageNumbers.push(<a className="pageNumber" href={"/list?page="+(current_page+1)+(query?"&q="+query:"")}>{">>"}</a>);

	return (
		<div>
			<h1 className="BooksHeading"> Knihy </h1>
			<form className="SearchForm" name="search_form">
					<input name="q" type="text" placeholder="Zadajte názov knihy..." defaultValue={query}/>
			</form>
			<div className='BookList'>
				{bookList.map((value, key) => {
					const authors = [];

					for (let i = 0; i < value.authors.length; i++) {
						authors.push(<span><a className="BookPageAuthor" href={"/author/"+value.authors[i].author_id}>{value.authors[i].author_name}</a>; </span>);
					}

					return (
						<a className='BookListItem' href={'/book/' + value.isbn}>
								<img className='BookListItemImage' src={value.image ? value.image : "/reading.png"} alt='Chýbajúci obrázok'></img>
								<div className='BookListItemBlock'>
									<div className='BookListItemTitle'> {value.title} </div>
									<div className='BookListItemInfo'>
										{authors}{value.year_pub}, {value.pages} strán, {minutesToReadableTime(value.read_time)}, {value.lang_name}, {value.subject_name}
									</div>
									<p className='BookListDescription'> {value.desc ? value.desc.slice(0,360) + (value.desc.length > 360 ? "..." : "") : "Žiaden popis"} </p>
								</div>
						</a>
					)
				})}
				<p> {bookList.length === 0 ? "Neboli nájdené žiadne knihy" : ""} </p>
				{pageCount > 1 ? <div className="pageNumbers"> {pageNumbers} </div> : []}
			</div>
		</div>
	);
}
