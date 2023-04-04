import React from 'react';

const Card = ({book}) => {
    return (
        <a href={`book/${book?.idBook}`} className={"flex flex-col mx-4"}>
            <img className={"w-[250px] h-[350px] object-cover"} src={book?.cover} alt={`page de couverture de ${book?.title}`}/>
            <div className={"flex justify-between text-gray-500"}>
                <span className={"font-semibold"}>{book.title.slice(0,10)}...</span>
                <span>{book?.idAuthor[0].slice(0,10)}...</span>
                <span>{book?.idYear.slice(0,4)}</span>
            </div>
        </a>
    );
};

export default Card;