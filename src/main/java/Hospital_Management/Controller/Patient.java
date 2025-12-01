package Hospital_Management.Controller;

import java.io.Serializable;
import java.time.LocalDate;

public class Patient implements Serializable{

	private String name;
	private String email;
	private String doctor;
	private String date;
	
	public Patient() {
		super();
	}

	
	public Patient(String name, String email, String doctor, String date) {
		super();
		this.name = name;
		this.email = email;
		this.doctor = doctor;
		this.date = date;
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

	public String getDoctor() {
		return doctor;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Patient [name=" + name + ", email=" + email + ", doctor=" + doctor + ", date=" + date + "]";
	}
	
	
	

}
