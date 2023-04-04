import React, {useEffect, useState} from 'react';
import Cards from "./Cards";
import axios from "axios";
import {useCookies} from "react-cookie";

const LastBooksBorrowed = () => {
    const [books, setBooks] = useState([]);
    const [cookies, setCookie] = useCookies(['cookies-token']);

    useEffect(() => {
        getLastBooksBorrowed()
    }, []);

    /**
     * Get last books borrowed by user
     * @returns {Promise<void>}
     */
    const getLastBooksBorrowed = async () => {
        const res = await axios({
            method: "GET",
            url: "http://localhost:8000/api/users/loan",
            headers: {
                Authorization: `Bearer ${cookies["cookies-token"]}`
            },
        });
        const books = await res;
        setBooks(books.data);
    }

    return (
        <div>
            {books.length > 0 &&
                <Cards books={books} title={"Vos derniers livres empruntés"}/>
            }
        </div>
    );
};

export default LastBooksBorrowed;