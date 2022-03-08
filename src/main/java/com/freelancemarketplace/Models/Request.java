package com.freelancemarketplace.Models;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.validation.constraints.Min;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="requests") 
public class Request {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    	private Long id;
    
    @NotNull(message="Title is required!")
    @Size(min=2, message="Title must be at least 2 characters long")
    private String title;

    @NotNull(message="Price is required!")
    @Min(value=10, message="Price must be at least 10$")
	private Integer price;
    
    @NotNull(message="Description is required!")
    @Size(min=2, message="Thoughts must be at least 2 characters long")
    private String description;
       
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User user;
    
    
	public Request() {}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public Integer getPrice() {
		return price;
	}


	public void setPrice(Integer price) {
		this.price = price;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}
	
}	
/*
 * public Request(String title, Integer price, String description) { this.title
 * = title; this.price = price; this.description = description; }
 */
	
	