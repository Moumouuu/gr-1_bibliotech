import React, {useState} from 'react';
import {useLocation} from "react-router-dom";
import Book from "../Components/search/Book";
import Input from "../Components/home/Input";
import axios from "axios";
import {AiOutlineArrowLeft, AiOutlineArrowRight} from "react-icons/ai";

const Search = () => {
    const location = useLocation();
    const [search, setSearch] = useState(location.state?.search);
    const [books, setBooks] = useState(location.state?.books);
    const [page, setPage] = useState(location.state?.page);
    const [allBooks, setAllBooks] = useState(books[books?.length - 1]);

    /**
     * Call the API to get the next page of books
     * @param e : event used to prevent default action (refresh page)
     * @returns {Promise<void>}
     */
    const nextPage = async (e) => {
        if ((page + 1) !== Math.ceil(allBooks / 10)) {
            e.preventDefault();
            const res = await axios({
                method: "GET",
                url: "http://localhost:8000/api/books/find",
                params: {
                    name: search,
                    p: page + 1
                }
            });
            const data = await res;
            setBooks(data.data);
            setPage(page + 1);
        }
    }

    /**
     * Call the API to get the previous page of books
     * @param e : event used to prevent default action (refresh page)
     * @returns {Promise<void>}
     */
    const prevPage = async (e) => {
        if (page - 1 >= 0) {
            e.preventDefault();
            const res = await axios({
                method: "GET",
                url: "http://localhost:8000/api/books/find",
                params: {
                    name: search,
                    p: page - 1
                }
            });
            const data = await res;
            setBooks(data.data);
            setPage(page - 1);
        }
    }


    return (
        <div className={"m-5"}>
            {(books && search) ? (
                <div className={"flex flex-col w-full text-center m-3"}>
                    <h3 className={"font-semibold text-[#009999]"}>Tout les livres de <span
                        className={"text-[#086969] font-bold"}>{search}</span> disponibles à la
                        bibliothèque</h3>
                    <div className={"flex flex-row justify-center items-center"}>
                        <a className={"text-[#009999] underline mr-1 text-xl"} href={""}
                           onClick={(e) => prevPage(e)}> <AiOutlineArrowLeft/> </a>
                        <span className={"mr-1"}>
                        Page {page + 1} sur {Math.ceil(allBooks / 10)} [{allBooks} livres]
                    </span>
                        <a className={"text-[#009999] underline text-xl"} href={""}
                           onClick={(e) => nextPage(e)}> <AiOutlineArrowRight/> </a>
                    </div>
                </div>
            ) : (
                <div className={"flex flex-col w-full justify-between items-center"}>
                    <h3 className={"font-semibold text-[#009999] my-2"}>Aucun livres, veuillez refaire une
                        recherche</h3>
                    <Input/>
                </div>
            )}

            <div className={"flex flex-wrap justify-center"}>
                {books?.map((book) => (
                    <Book book={book}/>
                ))}
            </div>

        </div>
    )
        ;
};

export default Search;