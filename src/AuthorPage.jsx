import React from 'react'
import Axios from 'axios'
import './App.css'
import {bookList} from './Utility'

const config = require('./config')

export default function AuthorPage() {
    const [authorData, setAuthorData] = React.useState({})

    React.useEffect(() => {
        Axios.get(config.apiUrl + 'author/?author=' + window.location.pathname.match('[^/]*$')).then((data) => {
            console.log(data)
            setAuthorData(data.data)
        }).catch((err)=>{
            console.log(err);
        })
    }, [])

    return (
        <div className="AuthorPageContainer">
            <h1 className="AuthorPageHeading"> {"Knihy od autora " + authorData.author_name} </h1>
            {authorData.books ? bookList(authorData.books) : []}
        </div>
    )
}
