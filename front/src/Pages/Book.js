import React, {useEffect, useState} from "react";
import BookInfo from "../Components/book-infos/BookInfo";
import axios from "axios";
import {useParams} from "react-router-dom";

const Book = () => {
    const [book, setBook] = useState();
    const params = useParams();
    const idBook = params.id;

    useEffect(() => {
        searchAPIBook();
    }, []);

    /**
     * Fetchs book info in the API to display in BookInfo.js
     * @returns
     */
    const searchAPIBook = async () => {
        const res = await axios({
            method: "GET",
            url: "http://localhost:8000/api/book",
            params: {
                id: parseInt(idBook),
            },
        });
        const book = await res;
        setBook(book.data);
    };
    return (
        <div className="flex justify-center">
            <BookInfo book={book} idBook={idBook}/>
        </div>
    );
};

export default Book;
