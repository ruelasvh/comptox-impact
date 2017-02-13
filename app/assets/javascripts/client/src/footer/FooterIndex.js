/**
 * Created by Victor H. Ruelas-Rivera on 1/27/17.
 * US EPA National Center for Computational Toxicology
 */
import React from 'react';
import seal from './img/epa_logo_round.svg';
import blog from './img/socmed_blog.png';
import twitter from './img/socmed_twitter_2.png';
import facebook from './img/socmed_facebook_2.png';
import youtube from './img/socmed_youtube_2.png';
import news from './img/socmed_news.png';
import './FooterIndex.css';

const FooterIndex = () => (
    <footer className="footer">
        <div className="footer-logo">
            <a href="https://epa.gov">
                <img src={seal} alt="EPA_Seal"/>
            </a>
        </div>

        <ul className="footer-follow-links">
            <li><a href="https://www.youtube.com/user/USEPAgov" target="_blank"><img src={youtube} alt="socmed_youtube"/></a></li>
            <li><a href="https://www.facebook.com/EPAresearch/" target="_blank"><img src={facebook} alt="socmed_facebook"/></a></li>
            <li><a href="https://www.twitter.com/epa" target="_blank"><img src={twitter} alt="socmed_twitter"/></a></li>
            <li><a href="https://blog.epa.gov/blog/tag/chemical-research/" target="_blank"><img src={blog} alt="socmed_blog"/></a></li>
            <li><a href="https://www.epa.gov/newsreleases/search/rss/subject/research" target="_blank"><img src={news} alt="socmed_news"/></a></li>
        </ul>

        <ul className="footer-links">
            <li><div><a href="/">Home</a></div></li>
            <li><div><a href="https://epa.gov/comptox" target="_blank">About Us</a></div></li>
            <li><div><a href="#PrivacySecurityNotice">Privacy and Security Notice</a></div></li>
            <li><div><a href="#Accesibility">Accessibility</a></div></li>
            <li><p style={{fontSize: "small"}}>Last Updated on {document.lastModified}</p></li>
        </ul>
    </footer>
);

export default FooterIndex;