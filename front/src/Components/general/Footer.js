import React from 'react';
import Icons from "./footer/Icons";
import Informations from "./footer/Informations";
import Copyright from "./footer/Copyright";

const Footer = () => {
    return (
        <div className={"flex justify-center w-full bg-gray-200 p-10"}>
            <div className={"w-[80vw] flex-col justify-arround"}>
                <Informations />
                <Icons />
                <Copyright />
            </div>
        </div>
    );
};

export default Footer;