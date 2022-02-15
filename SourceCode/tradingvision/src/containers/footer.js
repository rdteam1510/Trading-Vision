import React from "react";
import Footer from "../Components/footer";
import Icon from '../Components/icons';

export function FooterContainer() {
    return(
        <Footer>
            <Footer.Wrapper>
                <Footer.Row>
                <Footer.Column>
                    <Footer.Title>TradingVision</Footer.Title>
                    
                    
                </Footer.Column>
                <Footer.Column>
                    <Footer.Title>Contact</Footer.Title>
                    <Footer.Link href="#"><Icon className="fa-solid fa-envelope" />tradingvision@gmail.com</Footer.Link>
                    <Footer.Link href="#"><Icon className="fa-solid fa-phone" />+01 123 456 789</Footer.Link>
                    
                </Footer.Column>
                <Footer.Column>
                    <Footer.Title>Quick Links</Footer.Title>
                    <Footer.Link href="#">Market</Footer.Link>
                    <Footer.Link href="#">Favorite</Footer.Link>
                    <Footer.Link href="#">Reminder</Footer.Link>
                  
                </Footer.Column>
                <Footer.Column>
                    <Footer.Title>Follow Us</Footer.Title>
                    <Footer.Link href="#"><Icon className="fa-brands fa-facebook-square" />Facebook</Footer.Link>
                    <Footer.Link href="#"><Icon className="fa-brands fa-linkedin" />Linkedin</Footer.Link>
                    <Footer.Link href="#"><Icon className="fa-brands fa-twitter-square" />twitter</Footer.Link>
                    
                </Footer.Column>
                </Footer.Row>
            </Footer.Wrapper>
        </Footer>
    )
}