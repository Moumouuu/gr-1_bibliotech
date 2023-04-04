import React from 'react';
import Input from "./Input";

const Banner = () => {
    return (
        <div className={"flex items-center w-full h-[250px] bg-[url('https://images.pexels.com/photos/159711/books-bookstore-book-reading-159711.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')]"}>
            <Input/>
        </div>
    );
};

export default Banner;