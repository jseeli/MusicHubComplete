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

public class AdminController 
{
	
	private ProductService pservice;
	
	@Autowired
	public AdminController(ProductService pservice)
	{
		this.pservice=pservice;
	}
	
	@RequestMapping("/admin/AdminHome")
	public String showAdminHome()
	{
		return "AdminHome";
	}
	@RequestMapping(value="/admin/ProductCRUD",method=RequestMethod.GET)
	public String showProductAdd(Map<String, Object> model)
	{
				Product p = new Product();    
        		model.put("prdt", p);
         
        		List<String> instruTypes = new ArrayList<String>();
        		instruTypes.add("Brass");
        		instruTypes.add("Percussion");
        		instruTypes.add("Stringed");
        		
        		Gson gson = new Gson();
       	        String jsonCartList = gson.toJson(pservice.getProductList());
       	        model.put("proddt",jsonCartList);
        		
        		model.put("items", instruTypes);
        
        		return "ProductCRUD";
	}
	@RequestMapping(value="/admin/ProductCRUD",method = RequestMethod.POST)
    public String AddProduct(@ModelAttribute("prdt")Product prdt, Map<String, Object> model,HttpServletRequest request, BindingResult result) 
   	{
		
		Product p = new Product();    
		model.put("prdt", p);
		
        ServletContext context=request.getServletContext();
        String path=context.getRealPath("./resources/"+prdt.getPid()+".jpg");
        File f=new File(path);
        if(!prdt.getPimage().isEmpty())
        {
            try
            {
                //filename=p.getImage().getOriginalFilename();
                byte[] bytes=prdt.getPimage().getBytes();
                BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
                bs.write(bytes);
                bs.close();
                System.out.println("Image uploaded");
                boolean b1=pservice.insertProduct(prdt);
                System.out.println("Data Inserted");
            }
            catch(Exception ex)
            {
                System.out.println(ex.getMessage());
            }
        }
                
    		List<String> instruTypes = new ArrayList<String>();
    		instruTypes.add("Brass");
    		instruTypes.add("Percussion");
    		instruTypes.add("Stringed");
		
			Gson gson = new Gson();
	        String jsonCartList = gson.toJson(pservice.getProductList());
	        model.put("proddt",jsonCartList);
		
	        model.put("items", instruTypes);
		
            return "ProductCRUD";       
   	}
	@RequestMapping("/admin/ProductUpdateDelete")
    public String showProductDeleteUpdate(Map<String, Object> model)
    {
		Gson gson = new Gson();
        String jsonCartList = gson.toJson(pservice.getProductList());
        model.put("proddt",jsonCartList);
    	return "ProductUpdateDelete";
    }
	@RequestMapping(value="/admin/ProductDelete",method=RequestMethod.GET)
	public String showProductDelete(Map<String, Object> model,@RequestParam("pid")int prodid)
	{
				pservice.deleteProduct(prodid);
				
        		Gson gson = new Gson();
       	        String jsonCartList = gson.toJson(pservice.getProductList());
       	        model.put("proddt",jsonCartList);
        		
        
        		return "ProductUpdateDelete";
	}
	
	@RequestMapping(value="/admin/ProductUpdate",method=RequestMethod.GET)
	public String showProductUpdate(Map<String, Object> model,@RequestParam("pid")int prodid)
	{
		List<String> instruTypes = new ArrayList<String>();
		instruTypes.add("Brass");
		instruTypes.add("Percussion");
		instruTypes.add("Stringed");
		
		Product p = new Product();    
		p.setPid(prodid);
		model.put("prdt", p);
		
		
		model.put("items",instruTypes);
		
		return "ProductUpdate";
	}
	@RequestMapping(value="/admin/ProductUpdate",method = RequestMethod.POST)
    public String updateProduct(@ModelAttribute("prdt")Product prdt, Map<String, Object> model,HttpServletRequest request, BindingResult result) 
   	{
			
			
        ServletContext context=request.getServletContext();
        String path=context.getRealPath("./resources/"+prdt.getPid()+".jpg");
        File f=new File(path);
        if(!prdt.getPimage().isEmpty())
        {
            try
            {
                //filename=p.getImage().getOriginalFilename();
                byte[] bytes=prdt.getPimage().getBytes();
                BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
                bs.write(bytes);
                bs.close();
                System.out.println("Image uploaded");
                boolean b1=pservice.updateProduct(prdt,prdt.getPid());
                System.out.println("Data Uploaded");
            }
            catch(Exception ex)
            {
                System.out.println(ex.getMessage());
            }
        }
        
        	Gson gson = new Gson();
        	String jsonCartList = gson.toJson(pservice.getProductList());
        	model.put("proddt",jsonCartList);
		
			return "ProductUpdateDelete";
		
   	}
   	
}
