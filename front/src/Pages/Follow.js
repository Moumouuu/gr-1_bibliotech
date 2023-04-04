import React, {useEffect, useState} from 'react';
import ProfileCard from '../Components/follow/ProfileCard';
import axios from "axios";
import {useCookies} from "react-cookie";

const Follow = () => {
    const [followers, setFollowers] = useState([]);
    const [recommendedUsers, setRecommendedUsers] = useState([]);
    const [cookies, setCookie] = useCookies(['cookies-token']);

    /**
     * Get all the followers of the user at the first render
     */
    useEffect(() => {
        if (!cookies['cookies-token']) {
            window.location.href = '/login';
        }
        getFollowers();
        getRecommendedUsers();
    }, [])

    /**
     * Get all the followers of the user
     * @returns {Promise<void>}
     */
    const getFollowers = async () => {
        const res = await axios({
            method: 'get',
            url: 'http://localhost:8000/api/users/friend',
            headers: {
                Authorization: `Bearer ${cookies['cookies-token']}`
            }
        })
        const data = await res.data;
        setFollowers(data)
    }

    /**
     * Get all the recommended users of the user
     * @returns {Promise<void>}
     */
    const getRecommendedUsers = async () => {
        const res = await axios({
            method: 'get',
            url: 'http://localhost:8000/api/users/friends_recommendation',
            headers: {
                Authorization: `Bearer ${cookies['cookies-token']}`
            }
        });
        const data = await res.data;
        setRecommendedUsers(data)
    }


    return (
        <div>
            <div className="text-2xl font-bold text-center m-3 mt-10 text-[#009999]">Vos amis</div>
            <div className="flex flex-row flex-wrap justify-center mb-20">
                {followers?.map((follower, index) => (
                    <ProfileCard key={index} follower={follower} follow={true}/>
                ))}
            </div>
            <div className="text-2xl font-bold text-center m-3 text-[#009999]">Les utilisateurs recommandés pour vous
            </div>
            <div className="flex flex-row flex-wrap justify-center">
                {recommendedUsers?.map((recommendedUser, index) => (
                    <ProfileCard key={index} follower={recommendedUser.user ? recommendedUser.user : recommendedUser}
                                 follow={false}/>
                ))}
            </div>

        </div>
    );
};

export default Follow;