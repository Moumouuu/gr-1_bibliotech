import React from 'react';
import LoginBox from './LoginBox';

const Banner = () => {

    return (
        <div>
            <div className="h-[70vh] w-full bg-[url('https://images-ext-1.discordapp.net/external/Mbmg6Hx16Ndw1TmqLGeVWh6Rdb2hfjhxF4eE6f7mVB0/%3Fq%3Dtbn%3AANd9GcSQcnwPffNQX_NsYWoNlAq_UJLJLe4s1qTk-qtnhVaQfkQflKV2/https/encrypted-tbn2.gstatic.com/images')]">
                <div className="h-full flex items-center justify-center">
                    <LoginBox  />
                </div>
            </div>
        </div>
    );
};

export default Banner;