import React, {useEffect} from "react";
import {HiOutlineHeart, HiHeart} from "react-icons/hi";
import {useState} from "react";
import axios from "axios";
import {useCookies} from "react-cookie";

const RightSection = ({book, idBook}) => {
    const [like, setLike] = useState(false);
    const [cookies, setCookies] = useCookies(["cookies-token"]);

    useEffect(() => {
        if(cookies["cookies-token"])
            getApiBooksLiked();
    }, [book]);

    /**
     * Gets list of books liked
     */
    const getApiBooksLiked = async () => {
        const resBookList = await axios({
            method: "GET",
            url: "http://localhost:8000/api/users/booksLike",
            headers: {
                Authorization: `Bearer ${cookies["cookies-token"]}`
            }
        });
        const resultBookList = await resBookList;
        compareBooksLiked(resultBookList.data);
    };

    /**
     * Checks if {book} is contained in list of books liked
     * @param {*} resultBookList
     */
    const compareBooksLiked = (resultBookList) => {
        for (let i = 0; i < resultBookList.length; i++) {
            if (resultBookList[i]?.idBook == book?.idBook) {
                setLike(true)
                break;
            }
        }
    };

    /**
     * Likes a book
     */
    const bookLiked = async () => {
        const resLikes = await axios({
            method: "POST",
            url: "http://localhost:8000/api/users/book_add",
            data: {
                idBook: parseInt(idBook),
            },
            headers: {
                Authorization: `Bearer ${cookies["cookies-token"]}`
            }
        });
        const result = await resLikes;
        setLike(true);
    };

    /**
     * Unlikes a book
     */
    const bookUnliked = async () => {
        const resLikes = await axios({
            method: "DELETE",
            url: "http://localhost:8000/api/users/book_delete",
            data: {
                idBook: parseInt(idBook),
            },
            headers: {
                Authorization: `Bearer ${cookies["cookies-token"]}`
            }
        });
        const result = await resLikes;
        setLike(false);
    };

    return (
        <div
            className="flex box-border flex-col bg-[#E5E7EB] md:h-full md:w-[40%] sm:w-full border-2 p-6 mb-5 overflow-x-scroll">
            <div>
                <span> Langue :</span>{" "}
                <span className="text-[#009999]">{book?.idLanguage}</span>
            </div>
            <div>
                <span> Date de publication :</span>{" "}
                <span className="text-[#009999]">{book?.idYear}</span>
            </div>
            <div>
                <span> Editeur :</span>{" "}
                <span className="text-[#009999]">{book?.idEditor}</span>
            </div>
            <div>
                <span> Catégories :</span>{" "}
                <span className="text-[#009999]">
          {book?.idCategory.map((categorie, index) => (
              <span key={index}>{categorie}</span>
          ))}
        </span>
            </div>
            <div className="pt-4 flex flex-col">
                <div className="text-xl font-medium ">
                    <span>Résumé :</span>
                </div>
                <span className="text-gray-500">{book?.description}</span>
            </div>
            {cookies["cookies-token"] && (
                <div className="flex flex-row h-full justify-end items-end">
                    {like ? (
                        <button>
                            <HiHeart onClick={bookUnliked} className="text-4xl text-red-600"/>
                        </button>
                    ) : (
                        <button>
                            <HiOutlineHeart onClick={bookLiked} className="text-4xl"/>
                        </button>
                    )}
                </div>
            )}
        </div>
    );
};

export default RightSection;
