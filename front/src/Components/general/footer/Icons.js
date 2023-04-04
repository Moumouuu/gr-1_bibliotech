import React from 'react';
import {AiOutlineInstagram, AiOutlineTwitter} from "react-icons/ai";
import {FaFacebookF} from "react-icons/fa";
import {BsLinkedin, BsYoutube} from "react-icons/bs";

const Icons = () => {
    return (
        <div className={"m-8 text-center"}>
            <div className={"flex w-full justify-center"}>
                <a href={"https://www.facebook.com/pages/INFO-IUT-Bordeaux-1/166805440024991"} className={"mx-2 p-3 text-white bg-blue-400"}>
                    <FaFacebookF />
                </a>
                <a href={"/"} className={"mx-2 p-3 text-white bg-black"}>
                    <AiOutlineInstagram />
                </a>
                <a href={"https://twitter.com/intent/follow?original_referer=http%3A%2F%2Fwww.iut.u-bordeaux.fr%2Finfo%2F&screen_name=iutInfoBdx&tw_p=followbutton&screen_name=iutInfoBdx&tw_p=followbutton"} className={"mx-2 p-3 text-white bg-blue-400"}>
                    <AiOutlineTwitter />
                </a>
                <a href={"https://www.linkedin.com/school/universite-de-bordeaux/"} className={"mx-2 p-3 text-white bg-black"}>
                    <BsLinkedin />
                </a>
                <a href={"https://www.youtube.com/user/iutinfobdx"} className={"mx-2 p-3 text-white bg-blue-400"}>
                    <BsYoutube />
                </a>
            </div>
            <span className={"text-gray-500"}>Conditions générales d'utilisation</span>
        </div>
    );
};

export default Icons;