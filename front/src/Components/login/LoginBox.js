import React from "react";
import {useState} from "react";
import axios from "axios";
import {useNavigate} from "react-router-dom";
import {useCookies} from "react-cookie";

const LoginBox = () => {
    const [cookies, setCookie] = useCookies(['cookies-token']);

    const [name, setName] = useState("");
    const [password, setPassword] = useState("");
    const navigation = useNavigate();

    /** Redirect to home page */
    const redirectionToHome = () => {
        navigation("/");
    };

    /**
     * Sends username and password to API to check if user is stored in the database
     * @param e : event from input search
     * @returns {Promise<void>}
     */
    const sendAPIConnection = async (e) => {
        e.preventDefault();
        const data = await axios({
            method: "POST",
            url: "http://localhost:8000/api/users/login",
            data: {
                name: name,
                password: password,
            },
        });
        const res = await data;
        if (res.status === 200) {
            setCookie('cookies-token', res.data.token, {path: '/'})
            redirectionToHome();
        } else {
            navigation("/error", {
                state: {
                    errorMessage: "Vos identifiants sont incorrectes",
                },
            });
        }
    };

    return (
        <form
            onSubmit={(e) => sendAPIConnection(e)}
            className="flex justify-center"
            method=""
            action=""
        >
            <div className=" bg-white box-content flex flex-col p-10 rounded">
                <div className="flex justify-center text-[#009999] text-[26px] font-semibold">
                    Connexion
                </div>
                <div className="box-content h-4 w-4"></div>
                <div
                    className="relative mb-4 box-border h-16 w-72 p-4 border-2 rounded"
                    data-te-input-wrapper-init
                >
                    <input
                        type="text"
                        className="peer block min-h-[autoz] w-full rounded border-0 bg-transparent py-[0.32rem] px-3 leading-[1.6] outline-none transition-all duration-200 ease-linear focus:placeholder:opacity-100 data-[te-input-state-active]:placeholder:opacity-100 motion-reduce:transition-none dark:placeholder:text-neutral-200 [&:not([data-te-input-placeholder-active])]:placeholder:opacity-0"
                        id="exampleFormControlInput1"
                        placeholder="Nom"
                        onChange={(e) => setName(e.target.value)}
                    />
                    <label
                        htmlFor="exampleFormControlInput1"
                        className="pointer-events-none absolute top-0 left-3 mb-0 max-w-[90%] origin-[0_0] truncate pt-[0.37rem] leading-[1.6] text-[#009999] transition-all duration-200 ease-out peer-focus:-translate-y-[0.9rem] peer-focus:scale-[0.8] peer-focus:text-[#086969] peer-data-[te-input-state-active]:-translate-y-[0.9rem] peer-data-[te-input-state-active]:scale-[0.8] motion-reduce:transition-none dark:text-neutral-200 dark:peer-focus:text-neutral-200"
                    >
                        Nom
                    </label>
                </div>
                <div
                    className="relative mb-4 box-border h-16 w-72 p-4 border-2 rounded"
                    data-te-input-wrapper-init
                >
                    <input
                        type="password"
                        className="peer block min-h-[auto] w-full rounded border-0 bg-transparent py-[0.32rem] px-3 leading-[1.6] outline-none transition-all duration-200 ease-linear focus:placeholder:opacity-100 data-[te-input-state-active]:placeholder:opacity-100 motion-reduce:transition-none dark:placeholder:text-neutral-200 [&:not([data-te-input-placeholder-active])]:placeholder:opacity-0"
                        id="exampleFormControlInput11"
                        placeholder="Mot de passe"
                        onChange={(e) => setPassword(e.target.value)}
                    />
                    <label
                        htmlFor="exampleFormControlInput11"
                        className="pointer-events-none absolute top-0 left-3 mb-0 max-w-[90%] origin-[0_0] truncate pt-[0.37rem] leading-[1.6] text-[#009999] transition-all duration-200 ease-out peer-focus:-translate-y-[0.9rem] peer-focus:scale-[0.8] peer-focus:text-[#086969]  peer-data-[te-input-state-active]:-translate-y-[0.9rem] peer-data-[te-input-state-active]:scale-[0.8] motion-reduce:transition-none dark:text-neutral-200 dark:peer-focus:text-neutral-200"
                    >
                        Mot de passe
                    </label>
                </div>
                <button
                    onClick={(e) => sendAPIConnection(e)}
                    className="bg-[#009999] hover:bg-[#086969]  text-white font-bold py-2 px-4 rounded duration-300"
                >
                    Se connecter
                </button>
            </div>
        </form>
    );
};

export default LoginBox;
