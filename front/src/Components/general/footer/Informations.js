import React from 'react';

const Informations = () => {
    return (
        <div className={"flex justify-around "}>
            <div className={"w-1/2 text-center"}>
                <p className={"text-[#009999] font-semibold text-xl mb-4"}>IUT - Bibliothèque</p>
                <div className={"flex flex-col text-gray-500"}>
                    <span>15 rue de Naudet - CS 10207</span>
                    <span>33 175 Gradignan Cedex</span>
                    <span>Tél. +33 (0)5 56 84 57 57</span>
                </div>
            </div>
            <div className={"w-1/2 text-center"}>
                <p className={"text-[#009999] font-semibold text-xl mb-4"}>Liens</p>
                <div className={"flex flex-col text-gray-500"}>
                    <a href={"https://www.u-bordeaux.fr/"}>IUT de Bordeaux</a>
                    <a href={"https://bibliotheques.u-bordeaux.fr/"}>Bibliothèque de l'université de Bordeaux</a>
                    <a href={"mailto:secretariat-info@iut.u-bordeaux.fr"}>Nous Contacter</a>
                </div>
            </div>
        </div>
    );
};

export default Informations;