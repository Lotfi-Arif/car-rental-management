package com.crms.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
    
    @RequestMapping(value="/home")
    public String viewHome(HttpSession session) {
        if(session.getAttribute("role").equals("customer") && session.getAttribute("status").equals("success")) {
            return "customer/homecustomer";
        }
        else if(session.getAttribute("role").equals("staff") && session.getAttribute("status").equals("success")) {
            return "staff/homestaff";
        }
        else if (session.getAttribute("role").equals("admin") && session.getAttribute("status").equals("success")){
            return "admin/homeadmin";
        } 
        else {
            return "invaliduser";
        }
    }

    @RequestMapping(value="/aboutus")
    public String viewAboutUs(HttpSession session) {
        if(session.getAttribute("status").equals("success")){
            return "aboutus";
        }
        else{
            return "invaliduser";
        }
    }

    @RequestMapping(value="/logout")
    public String logout(HttpSession session) {
        if(session.getAttribute("status") == "success"){
            session.invalidate();
            return "login";
        }
        else{
            return "invaliduser";
        }
        
    }    
    }


