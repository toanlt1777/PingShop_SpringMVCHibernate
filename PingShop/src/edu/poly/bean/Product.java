package edu.poly.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "product")
public class Product {
	@Id
	@NotEmpty(message="Can not be empty Product ID !")
	@Column(name="productId")
	private String productId;
	@NotEmpty(message="Can not be empty Product Name !")
	@Column(name="productName")
	private String productName;
	@Column(name="quantity")
	private Integer Quantity;
	@Column(name="price")
	private Double price;
	@NotEmpty(message="Can not be empty Photo !")
	@Column(name="photo")
	private String photo;
	@NotEmpty(message="Can not be empty Sale !")
	@Column(name="sale")
	private String sale;
	@Column(name="decription")
	private String decription;
	@NotEmpty(message="Can not be empty Manufacture !")
	@Column(name="manufacture")
	private String manufacture;
	@Temporal(TemporalType.DATE)
	@Column(name="manufacturingDate")
	private Date manufacturingDate;
	@Temporal(TemporalType.DATE)
	@Column(name="expiryDate")
	private Date expiryDate;
	@NotEmpty(message="Can not be empty status !")
	@Column(name="status")
	private String status;
	@ManyToOne
	@JoinColumn(name = "categoryId")
	private Category categorys;
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Integer getQuantity() {
		return Quantity;
	}
	public void setQuantity(Integer quantity) {
		Quantity = quantity;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getSale() {
		return sale;
	}
	public void setSale(String sale) {
		this.sale = sale;
	}
	public String getDecription() {
		return decription;
	}
	public void setDecription(String decription) {
		this.decription = decription;
	}
	public String getManufacture() {
		return manufacture;
	}
	public void setManufacture(String manufacture) {
		this.manufacture = manufacture;
	}
	public Date getManufacturingDate() {
		return manufacturingDate;
	}
	public void setManufacturingDate(Date manufacturingDate) {
		this.manufacturingDate = manufacturingDate;
	}
	public Date getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Category getCategorys() {
		return categorys;
	}
	public void setCategorys(Category categorys) {
		this.categorys = categorys;
	}
	
}
