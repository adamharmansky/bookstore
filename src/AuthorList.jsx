import React from 'react';
import Axios from 'axios';
import './App.css';
import get_query from './Utility';

const config = require('./config');

export default function AuthorList() {
	var [authorList, setAuthorList] = React.useState([]);
	var [pageCount, setPageCount] = React.useState(0);

	React.useEffect(() => {
		const url = new URL(window.location.href)
		Axios.get(config.apiUrl + 'author/list' + url.search).then((data) => {
			console.log(data);
			setAuthorList(data.data.authors);
			setPageCount(data.data.pageCount);
		})
	}, [])

	const pageNumbers = [];
	const current_page = parseInt(get_query('page'));
	const query = get_query('q');

	if (current_page > 0) pageNumbers.push(<a className="pageNumber" href={"/authors?page="+(current_page-1)+(query?"&q="+query:"")}>{"<<"}</a>);
	for (let i = 0; i < pageCount; i++) {
		pageNumbers.push(i === current_page ? <span className="currentPageNumber">{i}</span> : <a className="pageNumber" href={"/authors?page="+i+(query?"&q="+query:"")}>{i}</a>);
	}
	if (current_page < pageCount-1) pageNumbers.push(<a className="pageNumber" href={"/authors?page="+(current_page+1)+(query?"&q="+query:"")}>{">>"}</a>);

	return (
		<div>
			<h1 className="AuthorsHeading"> Autori </h1>
			<form className="SearchForm" name="search_form">
				<input name="q" type="text" placeholder="Zadajte meno autora..." defaultValue={query}/>
			</form>
			<div className='AuthorList'>
				{authorList.map((value, key) => {
					return (
						<a className='AuthorListItem' href={"/author/" + value.author_id}>
							<div className='AuthorListItemTitle'> {value.author_name} </div>
						</a>
					);
				})}
				<p> {authorList.length === 0 ? "Neboli nájdené žiadne výsledky" : ""} </p>
				{pageCount > 1 ? <div className="pageNumbers"> {pageNumbers} </div> : []}
			</div>
		</div>
	);
}
