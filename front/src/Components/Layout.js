import React from 'react';
import Header from "./general/Header";
import Footer from "./general/Footer";

const Layout = ({children}) => {
    return (
        <div>
            <Header />
            {children}
            <Footer />
        </div>
    );
};

export default Layout;