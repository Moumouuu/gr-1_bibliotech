import React from 'react';



const LeftSection = ({cover}) => {
    return (
        <div className="flex md:w-[60%] md:mr-3 sm:w-full">
            <img src={cover} className="object-cover h-full w-full"></img>
        </div>
    );
};

export default LeftSection;