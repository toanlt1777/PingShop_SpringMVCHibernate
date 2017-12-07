package edu.poly.bean;


import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="account")
public class Account {
	@Id
	@Size(min=5, max=15,message="The username must be more than 5 and less than 15 characters long !")
	@NotBlank(message="Username Can not be blank !")
	@Column(name="username")
	private String username;
	@NotBlank(message="Password Can not be blank !")
	@Size(min=5, max=15,message="The password must be more than 5 and less than 15 characters long !")
	@Column(name="password")
	private String password;
	@NotBlank(message="Can not be empty roles !")
	@Column(name="role")
	private String role;
	/*@OneToMany(mappedBy="accounts",cascade = CascadeType.ALL,fetch=FetchType.EAGER)
	private Collection<Customer> customers;*/
	public String getUsername() {
		return username;
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
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	/*public Collection<Customer> getCustomers() {
		return customers;
	}
	public void setCustomers(Collection<Customer> customers) {
		this.customers = customers;
	}*/
}
