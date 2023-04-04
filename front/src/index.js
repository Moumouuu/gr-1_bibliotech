import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';
import './index.css';
import Layout from "./Components/Layout";
import {CookiesProvider} from 'react-cookie';

const root = ReactDOM.createRoot(document.getElementById('root'));


root.render(
    <React.StrictMode>
        <CookiesProvider>
            <Layout>
                <App/>
            </Layout>
        </CookiesProvider>
    </React.StrictMode>
);
