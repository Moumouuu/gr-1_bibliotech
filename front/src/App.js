import {BrowserRouter, Route, Routes} from "react-router-dom";
import Home from "./Pages/Home";
import Search from "./Pages/Search";
import Error from "./Components/Error";
import Follow from "./Pages/Follow";
import Login from "./Pages/Login";
import Book from "./Pages/Book";
import Logout from "./Pages/Logout";

function App() {
    return (
        <BrowserRouter>
            <Routes>
                {/* Routes */}
                <Route path="/" element={<Home/>}/>
                <Route path={"/search"} element={<Search/>}/>
                <Route path={"/follow"} element={<Follow/>}/>
                <Route path={"/login"} element={<Login />}/>
                <Route path={"/book/:id"} element={<Book/>}/>
                <Route path={"/logout"} element={<Logout/>} />
                {/* Other route not defined */}
                <Route path="*" element={<Error/>}/>
            </Routes>
        </BrowserRouter>
    );
}

export default App;
