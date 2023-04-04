import React, {useEffect, useState} from 'react';
import Cards from "./Cards";
import axios from "axios";
import {useCookies} from "react-cookie";

const LatestLibraryAcquisition = () => {
    const [books, setBooks] = useState([]);
    const [cookies, setCookie] = useCookies(['cookies-token']);

    useEffect(() => {
        getLastAcquisition()
    }, []);

    /**
     * Get last books acquired by library
     * @returns {Promise<void>}
     */
    const getLastAcquisition = async () => {
        const data = await axios({
            method: "GET",
            url: "http://localhost:8000/api/books/library",
            headers: {
                Authorization: `Bearer ${cookies["cookies-token"]}`
            }
        });
        const res = await data;
        setBooks(res.data)
    }


    return (
        <div>
            {books.length > 0 &&
                <Cards books={books} title={"Les dernières acquisitions de la bibliothèque "}/>
            }
        </div>
    );
};

export default LatestLibraryAcquisition;