import React from 'react';
import Card from "./Card";

const Cards = ({books, title}) => {
    return (
        <div className={"flex justify-center my-10"}>
            <div className={"flex flex-col w-full justify-center"}>
                <p className={"font-bold text-xl text-center text-[#009999]"}>{title}</p>
                <div className={"flex flex-wrap justify-center my-2"}>
                    {books?.map((book) => (
                        <Card key={book.idBook} book={book}/>
                    ))}
                </div>
            </div>
        </div>
    );
};

export default Cards;