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
@Table(name="order")
public class Order {
	@Id
	@NotEmpty(message="Can not be empty Order ID !")
	@Column(name="orderId")
	private String orderId;
	@NotEmpty(message="Can not be empty Customer Name !")
	@Column(name="customerName")
	private String customerName;
	@NotEmpty(message="Can not be empty Phone !")
	@Size(min=10, max=11,message="The Telephone must be more than 10 and less than 11 number !")
	@Column(name = "phone")
	private String phone;
	@NotEmpty(message="Can not be empty Address !")
	@Column(name="address")
	private String address;
	@Column(name="quantity")
	private Integer quantity;
	@Temporal(TemporalType.DATE)
	@Column(name="orderDate")
	private Date orderDate;
	@Column(name="totalPrice")
	private Double totalPrice;
	@NotEmpty(message="Can not be Status !")
	@Column(name="status")
	private String status;
//	@ManyToOne
//	@JoinColumn(name = "productId")
//	private Product product;
//	@ManyToOne
//	@JoinColumn(name = "customerId")
//	private Customer customer;
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
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
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
//	public Product getProduct() {
//		return product;
//	}
//	public void setProduct(Product product) {
//		this.product = product;
//	}
//	public Customer getCustomer() {
//		return customer;
//	}
//	public void setCustomer(Customer customer) {
//		this.customer = customer;
//	}
	
}
