import React from 'react';
import Axios from 'axios';
import './App.css';
import {get_query, bookList as listBooks} from './Utility';

const config = require('./config')

export default function BookList() {
    var [bookList, setBookList] = React.useState([]);
    var [pageCount, setPageCount] = React.useState(0);
    var [subjectInfo, setSubjectInfo] = React.useState(0);

    React.useEffect(() => {
        const url = new URL(window.location.href)
        Axios.get(config.apiUrl + 'list' + url.search + (url.search ? '&' : '?') + 'subject=' + window.location.pathname.match('[^/]*$')).then((data) => {
            console.log(data);
            setBookList(data.data.books);
            setPageCount(data.data.pageCount);
        })
        Axios.get(config.apiUrl + 'subject?subject=' + window.location.pathname.match('[^/]*$')).then((data) => {
            console.log(data);
            setSubjectInfo(data.data);
        });
    }, []);

    const pageNumbers = [];
    const page_text = get_query('page')
    const current_page = page_text.length > 0 ? parseInt(page_text) : 0;
    const query = get_query('q')

    if (current_page > 0) pageNumbers.push(<a className="pageNumber" href={"/list?page="+(current_page-1)+(query?"&q="+query:"")}>{"<<"}</a>);
    for (let i = 0; i < pageCount; i++) {
        pageNumbers.push(i === current_page ? <span className="currentPageNumber">{i}</span> : <a className="pageNumber" href={"/list?page="+i+(query?"&q="+query:"")}>{i}</a>);
    }
    if (current_page < pageCount-1) pageNumbers.push(<a className="pageNumber" href={"/list?page="+(current_page+1)+(query?"&q="+query:"")}>{">>"}</a>);

    return (
        <div>
            <h1 className="BooksHeading"> {subjectInfo.subject_name ? subjectInfo.subject_name : 'Neznámy predmet'} </h1>
            <form className="SearchForm" name="search_form">
                    <input name="q" type="text" placeholder="Zadajte názov knihy..." defaultValue={query}/>
            </form>
            <div className='BookList'>
                {listBooks(bookList)}
                <p> {bookList.length === 0 ? "Neboli nájdené žiadne knihy" : ""} </p>
                {pageCount > 1 ? <div className="pageNumbers"> {pageNumbers} </div> : []}
            </div>
        </div>
    );
}
