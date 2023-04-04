import React from 'react';
import {useLocation} from "react-router-dom";


const Error = () => {
    const location = useLocation();
    const errorMessage = location.state?.errorMessage;
    return (
        <div>
            <h1>{errorMessage}</h1>
        </div>
    );
};

export default Error;