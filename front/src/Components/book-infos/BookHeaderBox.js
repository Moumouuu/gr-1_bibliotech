import React from 'react';

const BookHeaderBox = ({book}) => {
    return (
        <div className="text-center flex md:flex-row sm:flex-col items-baseline mt-4 mb-1">
            <span className="title-book text-3xl font-medium text-[#009999] mr-2">{book?.title}</span>
            <span className="text-xl text-[#086969]">{book?.idAuthor[0]}</span>
        </div>
    );
};

export default BookHeaderBox;