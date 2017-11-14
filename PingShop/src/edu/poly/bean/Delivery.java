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
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="delivery")
public class Delivery {
	@Id
	@NotEmpty(message="Can not be empty Delivery ID !")
	@Column(name="deliveryId")
	private String deliveryId;
	@NotEmpty(message="Can not be empty product Name !")
	@Column(name="productName")
	private String productName;
	@NotEmpty(message="Can not be empty Phone !")
	@Size(min=10, max=11,message="The Telephone must be more than 10 and less than 11 number !")
	@Column(name = "phone")
	private String phone;
	@NotEmpty(message="Can not be empty Address !")
	@Column(name="address")
	private String address;
	@Temporal(TemporalType.DATE)
	@Column(name="deliveryDate")
	private Date deliveryDate;
	@Column(name="totalPrice")
	private Double totalPrice;
	@NotEmpty(message="Can not be empty Note !")
	@Column(name="note")
	private String note;
	@NotEmpty(message="Can not be Status !")
	@Column(name="status")
	private String status;
	@ManyToOne
	@JoinColumn(name = "productId")
	private Product products;
	@ManyToOne
	@JoinColumn(name = "customerId")
	private Customer customers;
	public String getDeliveryId() {
		return deliveryId;
	}
	public void setDeliveryId(String deliveryId) {
		this.deliveryId = deliveryId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public Double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Product getProducts() {
		return products;
	}
	public void setProducts(Product products) {
		this.products = products;
	}
	public Customer getCustomers() {
		return customers;
	}
	public void setCustomers(Customer customers) {
		this.customers = customers;
	}
	
}
