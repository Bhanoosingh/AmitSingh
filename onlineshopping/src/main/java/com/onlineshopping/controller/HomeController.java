package com.onlineshopping.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home(){
        return "index";
    }

    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required = false)String error,@RequestParam(value="logout", required = false)String logout,Model model,HttpServletRequest request,HttpServletResponse response)
    {
    	
        if(error != null){
            model.addAttribute("error", "Invalid username and password");
        }

        if (logout !=null){
        	HttpSession session= request.getSession(false);
            SecurityContextHolder.clearContext();        
            session= request.getSession(false);
            if(session != null) {
                session.invalidate();
                System.out.println("session clear");
            }
            for(Cookie cookie : request.getCookies()) {
                cookie.setMaxAge(0);
            }

            model.addAttribute("msg", "You have been logged out successfully");
        }

        return "login";
    }

    @RequestMapping("/about")
    public String about(){
        return "about";
    }
@RequestMapping("/contact")
public String contact()
{
	return "contact";
}
@RequestMapping("/help")
public String help()
{
	return "help";
}
} // The End of Class;
