package Hospital_Management.Controller;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Objects;

public class Hospital implements Serializable{
	private int id;
	private String name;
	private String email;
	private LocalDate dob;
	private String password;
	private String gender;
	
	
	public Hospital() {
		super();
	}
	public Hospital(int id, String name, String email, LocalDate dob, String password, String gender) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.dob = dob;
		this.password = password;
		this.gender = gender;
	}
	public Hospital(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
		this.dob = dob;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	@Override
	public String toString() {
		return "Hospital [id=" + id + ", name=" + name + ", email=" + email + ", dob=" + dob + ", password=" + password
				+ ", gender=" + gender + ", getId()=" + getId() + ", getName()=" + getName() + ", getEmail()="
				+ getEmail() + ", getDob()=" + getDob() + ", getPassword()=" + getPassword() + ", getGender()="
				+ getGender() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
		 
}
