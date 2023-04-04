import React, {useEffect, useState} from 'react';
import {HiOutlineMagnifyingGlass} from "react-icons/hi2";
import axios from "axios";
import {useNavigate} from "react-router-dom";

const Input = () => {
    const navigate = useNavigate();
    const [search, setSearch] = useState("");
    const [authors, setAuthors] = useState([]);
    const [showAuthors, setShowAuthors] = useState(false);
    const [page, setPage] = useState(0);


    /**
     * Allow to get all authors started by search input and show them in a box
     * @param e : event from input search
     * @returns {Promise<void>}
     */
    const searchAPIAuthors = async (e) => {
        setSearch(e.target.value);
        if (e.target.value.length >= 4) {
            setShowAuthors(true);

            const res = await axios({
                method: "GET",
                url: "http://localhost:8000/api/authors",
                params: {
                    "start": e.target.value
                }
            });

            const data = await res;
            setAuthors(data.data);

        } else {
            setShowAuthors(false);
            setAuthors([]);
        }
    }

    /**
     * Search books in API from search input (author name)
     * @returns {Promise<void>}
     */
    const callSearchAPIBooks = async (e, author) => {
        if (author) {
            e.preventDefault();
            const res = await axios({
                method: "GET",
                url: "http://localhost:8000/api/books/find",
                params: {
                    name: author,
                    p: page
                }
            });
            const data = await res;

            // Change de page après avoir récupéré les livres avec toutes les infos
            navigate("/search", {
                state:
                    {
                        search: author,
                        books: data.data,
                        page: page
                    }
            });
        }
    }

    const handleAuthor = (e, author) => {
        setSearch(author);
        callSearchAPIBooks(e, author)
    }

    return (
        <div className={"relative flex justify-center w-full"}>
            <form onSubmit={(e) => callSearchAPIBooks(e, search)} action="" className={" flex"}>
                <input onChange={(e) => searchAPIAuthors(e)} type="text" value={search}
                       placeholder={"Rechercher un auteur"}
                       className={"outline-none px-5 py-2 pr-5 text-[#009999] border "}/>
                <button onClick={(e) => callSearchAPIBooks(e,search)} type={"submit"}
                        className={"text-white text-xl py-3 px-5 bg-[#009999]"}>
                    <HiOutlineMagnifyingGlass/>
                </button>
            </form>
            {(showAuthors && authors.length > 0) && (
                <div className={"absolute top-11 p-3 w-[275px] bg-white"}>
                    {authors.map((author, index) => (
                        <div key={index}
                             onClick={(e) => handleAuthor(e, author.name)}
                             className={"cursor-pointer py-3 px-4 w-full bg-white hover:bg-gray-300 border-b border-gray-500"}>
                            <p>{author.name}</p>
                        </div>
                    ))}
                </div>
            )}
        </div>

    );
};

export default Input;