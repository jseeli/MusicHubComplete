package com.musichub.dao;

import java.util.*;
import com.musichub.model.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO 
{
	List<com.musichub.model.Product> proddt=new ArrayList<com.musichub.model.Product>();
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<com.musichub.model.Product> getProductDetails()
	{
		Session session = sessionFactory.openSession();		
		Query q = session.createQuery("from Product");
		proddt=q.list();
		return proddt;
	}
	public Product getProduct(int pid)
	{
		int i=0;
		while(i<proddt.size())
		{
			Product p=(Product)proddt.get(i);
			if(p.getPid()==pid)
			{
				return p;
			}
			i++;
		}
		return null;
	}
	public boolean insertProduct(Product p)
	{
		Session session = sessionFactory.openSession();
		session.save(p);
		session.flush();
		return true;
	}
	
	public boolean deleteProduct(int pid)
	{
		Session session=sessionFactory.openSession();
		Product p=(Product)session.get(Product.class, pid);
		session.delete(p);
		session.flush();
		return true;
	}
	public boolean updateProduct(Product p,int pid)
	{
		Session session=sessionFactory.openSession();
		
		Product p1=(Product)session.get(Product.class, pid);
		p1.setPname(p.getPname());
		p1.setCategory(p.getCategory());
		p1.setPrice(p.getPrice());
		p1.setDesc(p.getDesc());
		
		session.update(p1);
		session.flush();
		
		return true;
	}
	
	
	
}
