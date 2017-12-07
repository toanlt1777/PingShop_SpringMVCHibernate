package edu.poly.bean;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="customer")
public class Customer {
	@Id
	@GeneratedValue
	@Column(name="customerId")
	private Integer customerId;
	@Size(min=5, max=15,message="The username must be more than 5 and less than 15 characters long !")
	@NotBlank(message="Can not be empty username !")
	@Column(name="username")
	private String username;
	@NotBlank(message="Can not be empty password !")
	@Size(min=5, max=15,message="The password must be more than 5 and less than 15 characters long !")
	@Column(name="password")
	private String password;
	@NotBlank(message="Can not be empty name !")
	@Column(name="customerName")
	private String customerName;
	@Temporal(TemporalType.DATE)
	@Past(message="Must be time in the past")
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date birthday;
	@Column(name = "sex")
	private Boolean sex;
	@Email(message="Please format email, type '@'")
	@NotBlank(message="Can not be empty email !")
	@Column(name="email")
	private String email;
	@NotBlank(message="Can not be empty Address !")
	@Column(name="address")
	private String address;
	@NotEmpty(message="Can not be empty Phone !")
	@Size(min=10, max=11,message="The Telephone must be more than 10 and less than 11 number !")
	@Column(name = "phone")
	private String phone;
//	@OneToMany(mappedBy="customer",fetch=FetchType.EAGER)
//	private Collection<Order> orders;
//	@OneToMany(mappedBy="customers",fetch=FetchType.EAGER)
//	private Collection<Delivery> deliverys;
//	@ManyToOne
//	@JoinColumn(name = "username")
//	private Account accounts;
	
	public String getUsername() {
		return username;
	}
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public Boolean getSex() {
		return sex;
	}
	public void setSex(Boolean sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
//	public Collection<Order> getOrders() {
//		return orders;
//	}
//	public void setOrders(Collection<Order> orders) {
//		this.orders = orders;
//	}
//	public Collection<Delivery> getDeliverys() {
//		return deliverys;
//	}
//	public void setDeliverys(Collection<Delivery> deliverys) {
//		this.deliverys = deliverys;
//	}
//	public Account getAccounts() {
//		return accounts;
//	}
//	public void setAccounts(Account accounts) {
//		this.accounts = accounts;
//	}
	
	
}
