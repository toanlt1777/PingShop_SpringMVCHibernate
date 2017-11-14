package edu.poly.bean;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "category")
public class Category {
	@Id
	@NotEmpty(message="Can not be empty category ID !")
	@Column(name = "categoryId")
	private String categoryId;
	@NotEmpty(message="Can not be empty category Name !")
	@Column(name = "categoryName")
	private String categoryName;
	@OneToMany(mappedBy="categorys",fetch=FetchType.EAGER)
	private Collection<Product> products;
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public Collection<Product> getProducts() {
		return products;
	}
	public void setProducts(Collection<Product> products) {
		this.products = products;
	}
	
}
