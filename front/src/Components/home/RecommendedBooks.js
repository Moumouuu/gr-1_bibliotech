import React, {useEffect, useState} from 'react';
import Cards from "./Cards";
import axios from "axios";
import {useCookies} from "react-cookie";

const RecommendedBooks = () => {
    const [cookies, setCookie] = useCookies(['cookies-token']);
    const [recommendedBooks, setRecommendedBooks] = useState([]);

    useEffect(() => {
        getRecommendedBooks();
    }, []);

    const getRecommendedBooks = async () => {
        const res = await axios({
            method: 'GET',
            url: 'http://localhost:8000/api/users/book_recommandation',
            headers: {
                Authorization: `Bearer ${cookies['cookies-token']}`
            }
        });
        const resultRecommendedBooks = await res;
        setRecommendedBooks(resultRecommendedBooks.data);
    }

    return (
        <div>
            {recommendedBooks.length > 0 && (
                <Cards books={recommendedBooks} title={"Les livres recommandés pour vous "}/>
            )}
        </div>
    );
};

export default RecommendedBooks;