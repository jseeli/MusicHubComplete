package com.musichub.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import com.musichub.dao.*;
import com.musichub.model.*;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

@Controller
public class MyController 
{
	private ProductService pservice;
	
	@Autowired
	public MyController(ProductService pservice)
	{
		this.pservice=pservice;
	}
	
	@RequestMapping("/")
	public String showIndex() 
	{
		return "index";
	}

	@RequestMapping("/Login")
	public String showLogin() 
	{
		return "Login";
	}
	
	@RequestMapping("/Register")
	public String showRegister() 
	{
		return "Register";
	}
	
	@RequestMapping("/ContactUs")
	public String showContactUs() 
	{
		return "ContactUs";
	}
	
	@RequestMapping("/AboutUs")
	public String showAboutUs() 
	{
		return "AboutUs";
	}
	
	@RequestMapping("/ProductHome")
	public String showContactUs(Model m) 
	{
		 Gson gson = new Gson();
	     String jsonCartList = gson.toJson(pservice.getProductList());
	     m.addAttribute("proddt",jsonCartList);
		 return "ProductHome";
	}
	
	@RequestMapping(value="/ProductDescription",method=RequestMethod.GET)
	public ModelAndView showProductDescription(@RequestParam("pid")int prodid)
	{
	    Product p=pservice.getProduct(prodid);
		ModelAndView m=new ModelAndView("ProductDescription","MyProduct",p);
		return m;
	}
	
	@RequestMapping(value="/login")
	public String showLoginError(@RequestParam (value="error", required = false) String error,@RequestParam (value="logout", required = false) String logout, Model model)
	{
		  if(error != null) 
		   {
	           model.addAttribute("error", "Invalid Username and Password!");
	       }

	       if(logout!= null) 
	       {
	           model.addAttribute("msg", "You have been logged out successfully.");
	       }
		
		return "Login";
	}
}
