import React from 'react';
import BookHeaderBox from './BookHeaderBox';
import LeftSection from './LeftSection';
import RightSection from './RightSection';



const BookInfo = ({book,idBook }) => {
    return (
        <div className="flex flex-col sm:mb-5 items-center">
            <BookHeaderBox book={book}/>
            <div className="sm:flex md:flex-row sm:flex-col md:h-[80vh] md:w-[80vw] my-3">
                <LeftSection cover={book?.cover}/>
                <RightSection book={book} idBook={idBook}/>
            </div>
        </div>
    );
};

export default BookInfo;