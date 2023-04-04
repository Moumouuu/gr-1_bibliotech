import React from 'react';

const Book = ({book}) => {
    if(book.idBook){
        return (
            <a href={`/book/${book.idBook}`} className={"flex flex-col m-3 border justify-between "}>
                <img width={200} src={book.cover} alt={`Page de couverture de : ${book.title?.slice(0, 30)} ...`}/>
                <div className={"flex flex-col"}>
                    <span className={"font-semibold"}>{book.title?.slice(0, 20)} ...</span>
                    {book.idAuthor?.map(auteur => {
                        <span>{auteur.name}</span>
                    })}
                    <span>{book.idYear}</span>
                </div>
            </a>
        );
    }

};

export default Book;