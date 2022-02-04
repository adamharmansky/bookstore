export function get_query(q) {
    const params = new URLSearchParams(window.location.search);
    if (params.has(q)) return params.get(q)
    else return ''
}

export function minutesToReadableTime(minutes) {
    return ((minutes>=60?Math.floor(minutes/60)+"h ":"")+(minutes%60!==0?minutes%60+"m":""));
}


export function bookList(books) {
    return books.map((book) => {
        var authors = [];

        if (book.authors) {
            authors = book.authors.map((author) => {
                return <span><a className="BookPageAuthor" href={"/author/"+author.author_id}>{author.author_name}</a>; </span>;
            });
        }

        const style = {
            "--subject-clr0": book.subject_color0,
            "--subject-clr1": book.subject_color1,
            "--subject-clr2": book.subject_color2,
            "--subject-bg":   book.subject_background
        };

        return (
            <a key={book.title} className='BookListItem' href={'/book/' + book.isbn} style={style}>
                    <div className='BookListItemStripe'> </div>
                    <img className='BookListItemImage' src={book.image ? book.image : "/reading.png"} alt='Chýbajúci obrázok'></img>
                    <div className='BookListItemBlock'>
                        <h3> {book.title} </h3>
                        <div className='BookListItemInfo'>
                            {authors}{book.year_pub}, {book.pages} strán, {minutesToReadableTime(book.read_time)}, {book.lang_name}, {book.subject_name}
                        </div>
                        <p className='BookListDescription'> {book.desc ? book.desc.slice(0,360) + (book.desc.length > 360 ? "..." : "") : "Žiaden popis"} </p>
                    </div>
            </a>
        )
    })
}
