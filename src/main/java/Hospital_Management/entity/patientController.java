package Hospital_Management.entity;

import java.io.IOException;

import Hospital_Management.Controller.Hospital;
import Hospital_Management.Controller.Patient;
import Hospital_Management.Dao.HospitalDao;
import jakarta.servlet.GenericServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

public class patientController extends GenericServlet{
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		HospitalDao dao = new HospitalDao();
		
		String name =req.getParameter("name") ;
		String email =req.getParameter("email");
		
		String doctor =req.getParameter("doctor");
		String date =req.getParameter("date") ;
		Patient user= new Patient(name,email,doctor,date);
		Patient user1=dao.savePatientDao(user);
		if(user1!=null) {
			req.setAttribute("msg", "data registered");
			//printWriter.write("<html><body><h5 style='color:green;'>Data registered!!!</h5></body></html>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("home.jsp");
			dispatcher.include(req, res);
		}else {
			req.setAttribute("msg", "data not registered");
			//printWriter.write("<html><body><h5 style='color:red;'>Not Registered</h5></body></html>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("login.jsp");
			dispatcher.include(req,res);
		}
	}

}
