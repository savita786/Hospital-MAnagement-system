package Hospital_Management.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


//import com.jsp.servlet_simple_crud_operation.entity.User;

import Hospital_Management.Controller.Hospital;
import Hospital_Management.Controller.Patient;
import Hospital_Management.connection.HospitalConnection;

public class HospitalDao {	
Connection hospitalConection=HospitalConnection.getHospitalConnection();
	
final String INSERT_USER_QUERY="INSERT INTO login(id,name,email,password,dob,gender) values(?,?,?,?,?,?)";
final String INSERT_PATIENCE_QUERY="INSERT INTO apointment(name,email,doctor,date) values(?,?,?,?)";


	public Hospital saveUserDao(Hospital hospital)
	{
		try
		{
			//Connection connection = null;
			PreparedStatement ps=hospitalConection.prepareStatement(INSERT_USER_QUERY);
			ps.setInt(1,hospital.getId());
			ps.setString(2,hospital.getName());
			ps.setString(3, hospital.getEmail());
			ps.setString(4, hospital.getPassword());
			ps.setObject(5, hospital.getDob());
			ps.setString(6, hospital.getGender());
			int a=ps.executeUpdate();
			
			if(a!=0)
			{
			System.out.println(a+" number of row affected");
			return hospital;
			
			}
			
		else
		{
			return null;
		}
			}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
			
		}
}
	
	public Patient savePatientDao(Patient patient)
	{
		
		try
		{
			//Connection connection = null;
			PreparedStatement ps1=hospitalConection.prepareStatement(INSERT_PATIENCE_QUERY);
			ps1.setString(1,patient.getName());
			ps1.setString(2, patient.getEmail());
			ps1.setString(3, patient.getDoctor());
			ps1.setString(4, patient.getDate());
			int a=ps1.executeUpdate();
			
			if(a!=0)
			{
			System.out.println(a+" number of row affected");
			return patient;
			
			}
			
		else
		{
			return null;
		}
			}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
			
		}
}

	public Hospital getUserByEmailDao(String email) {
		
		final String SELECT_USER_WITH_EMAIL_QUERY="SELECT EMAIL,PASSWORD FROM login WHERE EMAIL=?";
		try
		{
			PreparedStatement ps=hospitalConection.prepareStatement(SELECT_USER_WITH_EMAIL_QUERY);
			ps.setString(1,email);
			ResultSet resultset=ps.executeQuery();
			if(resultset.next())
			{
			String email1=resultset.getString("email");
			String password1=resultset.getString("password");
			return new Hospital(email1,password1);
			}
			
		else
		{
			return null;
		}
			}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
			
		}
	}
}
