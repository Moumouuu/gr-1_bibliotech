import React, {useEffect} from 'react';
import {useCookies} from "react-cookie";

const Logout = () => {
    const [token, setToken, removeToken] = useCookies(['cookies-token']);

    useEffect(() => {
        if (token['cookies-token']) {
            removeToken(['cookies-token']);
            window.location.href = "/";
        }
    }, []);

    return (
        <div>
            {token['cookies-token'] && <span>Déconnexion, veuillez patienter...</span>}
        </div>
    );
};

export default Logout;