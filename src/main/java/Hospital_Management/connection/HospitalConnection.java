package Hospital_Management.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.cj.jdbc.Driver;

public class HospitalConnection {
	
	public static Connection getHospitalConnection()
	{
		try {
			//Driver driver=new Driver();
			DriverManager.registerDriver(new Driver());
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
			
			}
		catch(SQLException e)
		{
			e.printStackTrace();
			return null;
		}
		
	}

}
