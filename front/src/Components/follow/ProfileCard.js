import React, {useEffect} from "react";
import {useState} from 'react';
import axios from "axios";
import {useCookies} from "react-cookie";

const ProfileCard = ({follower, follow}) => {
    const [followState, setFollowState] = useState(follow);
    const [cookies, setCookie] = useCookies(['cookies-token']);
    const [lastReads, setLastReads] = useState([]);


    useEffect(() => {
        getLastReads();
    }, []);

    /**
     * Get the last reads of the user with id {follower.idUser}
     * @returns {Promise<void>}
     */
    const getLastReads = async () => {
        const res = await axios({
            method: 'get',
            url: `http://localhost:8000/api/users/last_like`,
            params: {
                "id": follower.idUser
            },
            headers: {
                Authorization: `Bearer ${cookies['cookies-token']}`
            }
        });
        const data = res.data;
        setLastReads(data);
    }

    /**
     * Add a friend to the user
     * @returns {Promise<void>}
     */
    const addFriend = async () => {
        const res = await axios({
            method: 'post',
            url: 'http://localhost:8000/api/users/friend_add',
            data: {
                "idUser1": follower.idUser
            },
            headers: {
                Authorization: `Bearer ${cookies['cookies-token']}`
            }
        });
        const data = res.data;
        setFollowState(true);
    }

    /**
     * Remove a friend from the user
     * @returns {Promise<void>}
     */
    const removeFriend = async () => {
        const res = await axios({
            method: 'delete',
            url: 'http://localhost:8000/api/users/friend_delete',
            data: {
                "idUser1": follower.idUser
            },
            headers: {
                Authorization: `Bearer ${cookies['cookies-token']}`
            }
        });
        const data = res.data;
        setFollowState(false);
    }

    return (
        <div
            className="flex flex-col bg-[#fffdfb] shadow-gray-400 shadow-lg h-[550px] w-[300px] m-5 rounded-md p-3 hover:bg-[#f7f7f7] transition ease-in-out delay-50">
            <div className="flex flex-col ">
                <img className="m-4 rounded-xl" src={follower?.pPicture}
                     alt={`${follower?.name} ${follower?.surname}`}/>
                <div className="flex flex-col justify-center text-xl">
                    <div className={"flex justify-center"}>
                        <span className="mr-1">{follower?.surname}</span>
                        <span>{follower?.name}</span>
                    </div>
                    <div className="flex justify-center">
                        {followState ? (
                            <button onClick={removeFriend}
                                    className="text-xs mt-2 py-3 px-6 bg-[#009999] text-white font-medium rounded-full">Se
                                désabonner</button>
                        ) : (
                            <button onClick={addFriend}
                                    className="text-xs mt-2 py-3 px-6 bg-[#009999] text-white font-medium rounded-full">S'abonner</button>
                        )}
                    </div>
                </div>
                {lastReads.length > 0 && (
                    <>
                        <div className="flex justify-center">
                            <span className="mt-5 mb-8 font-light">Dernier Likes</span>
                        </div>

                        <div className="relative flex flex-row justify-center">
                            {lastReads.map((lastRead, index) => (
                                <div key={index}
                                    className={`absolute w-1/3 -top-6 left-${index * 2} hover:z-30 hover:-translate-y-4 transition ease-in-out delay-50 duration-300`}>
                                    <a href={`/book/${lastRead.idBook}`}>
                                        <img className="object-cover h-[130px] rounded" src={lastRead.cover}
                                             alt={`couverture de ${lastRead.title}`}/>
                                    </a>
                                </div>
                            ))}
                        </div>
                    </>
                )}

            </div>
        </div>
    );
};

export default ProfileCard;
