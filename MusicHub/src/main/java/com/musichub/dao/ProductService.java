package com.musichub.dao;

import com.musichub.model.*;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService 
{
	@Autowired
	ProductDAO mydao;
	
	public ProductService()
	{
		
	}
	
	public List<Product> getProductList()
	{
		return mydao.getProductDetails();
	}
	
	public Product getProduct(int prodid)
	{
		return mydao.getProduct(prodid);
	}
	public boolean insertProduct(Product p)
	{
		
		return mydao.insertProduct(p);
	}
	public boolean deleteProduct(int pid)
	{
		return mydao.deleteProduct(pid);
	}
	public boolean updateProduct(Product p,int pid)
	{
		return mydao.updateProduct(p,pid);
	}
	
}
