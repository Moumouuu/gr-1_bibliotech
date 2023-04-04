import React from 'react';
import Banner from "../Components/home/Banner";
import LastBooksBorrowed from "../Components/home/LastBooksBorrowed";
import LatestLibraryAcquisition from "../Components/home/LatestLibraryAcquisition";
import {useCookies} from "react-cookie";
import RecommendedBooks from '../Components/home/RecommendedBooks';

const Home = () => {
    const [cookies, setCookies] = useCookies(['cookies-token']);
    return (
        <div>
            <Banner/>
            {cookies["cookies-token"] && (
                <div>
                    <LastBooksBorrowed/>
                    <LatestLibraryAcquisition/>
                    <RecommendedBooks />
                </div>
            )}
        </div>
    );
};

export default Home;