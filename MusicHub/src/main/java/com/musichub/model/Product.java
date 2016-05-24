package com.musichub.model;

import javax.persistence.Id;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.*;

@Entity
public class Product implements Serializable
{
	private static final long serialVersionUID = 1L;
	@Id
	int pid;
	String pname,desc,category;
	double price;
	@Transient
	MultipartFile pimage;
	
	public MultipartFile getPimage() 
	{
		return pimage;
	}
	public void setPimage(MultipartFile pimage) {
		this.pimage = pimage;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
}
