/*package edu.poly.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="users")
public class Users {
	implements Serializable
	 private static final long serialVersionUID = -3465813074586302847L;
	 
	@Id
	@Size(min=5, max=15,message="The username must be more than 5 and less than 15 characters long !")
	@NotBlank(message="Can not be empty username !")
	@Column(name="username")
	private String username;
	@NotBlank(message="Can not be empty password !")
	@Size(min=5, max=15,message="The password must be more than 5 and less than 15 characters long !")
	@Column(name="password")
	private String password;
	@NotBlank(message="Can not be empty fullname !")
	@Column(name="fullname")
	private String fullname;
	public Users() {
		super();
	}
	
	public Users(String username, String password, String fullname) {
		super();
		this.username = username;
		this.password = password;
		this.fullname = fullname;
	}

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
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
}
*/